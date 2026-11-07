$ErrorActionPreference = 'Stop'

$root = Split-Path -Parent $PSScriptRoot
$archive = Join-Path $root 'UNIP_Desenvolvimento_Mobile_8_Roteiros_Entrega_Final.zip'
$directories = @('android-native', 'flutter-mobile', 'dartpad', 'docs', 'scripts')
$sourceFiles = [System.Collections.Generic.List[System.IO.FileInfo]]::new()
$sourceFiles.Add((Get-Item -LiteralPath (Join-Path $root 'README.md')))
$sourceFiles.Add((Get-Item -LiteralPath (Join-Path $root '.gitignore')))

foreach ($directory in $directories) {
    Get-ChildItem -LiteralPath (Join-Path $root $directory) -Recurse -File |
        ForEach-Object { $sourceFiles.Add($_) }
}

if (Test-Path $archive) {
    Remove-Item -LiteralPath $archive
}

Add-Type -AssemblyName System.IO.Compression
Add-Type -AssemblyName System.IO.Compression.FileSystem
$zip = [System.IO.Compression.ZipFile]::Open(
    $archive,
    [System.IO.Compression.ZipArchiveMode]::Create
)
try {
    foreach ($file in $sourceFiles) {
        $relativePath = $file.FullName.Substring($root.TrimEnd('\').Length + 1)
        $entryName = $relativePath.Replace('\', '/')
        if ($entryName -match '(^|/)(\.git|\.dart_tool|\.gradle|build)(/|$)' -or
            $file.Name -eq 'local.properties' -or
            $entryName -eq 'flutter-mobile/android/app/src/main/java/io/flutter/plugins/GeneratedPluginRegistrant.java' -or
            $file.Extension -in @('.apk', '.aab', '.log', '.tmp')) {
            continue
        }

        [System.IO.Compression.ZipFileExtensions]::CreateEntryFromFile(
            $zip,
            $file.FullName,
            $entryName,
            [System.IO.Compression.CompressionLevel]::Optimal
        ) | Out-Null
    }
}
finally {
    $zip.Dispose()
}

Write-Output "Pacote criado: $archive"
Write-Output 'Caches, builds, propriedades locais e binários gerados foram excluídos.'
