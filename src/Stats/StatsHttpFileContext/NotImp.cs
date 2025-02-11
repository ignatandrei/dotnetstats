using Microsoft.Win32.SafeHandles;
using System.Diagnostics.CodeAnalysis;
using System.IO.Abstractions;
using System.Runtime.CompilerServices;
using System.Text;

namespace StatsHttpFileContext;

public class NotImp : NotImplementedException
{
    public NotImp([CallerMemberName] string? message = null) : base(message)
    {
        var x = message;
    }
}

public class HttpFileStream : FileSystemStream
{
    public HttpFileStream(Stream stream, string path, bool isAsync) : base(stream, path, isAsync)
    {

    }
}
class HttpPath : IPath
{

    public char AltDirectorySeparatorChar => throw new NotImp();

    public char DirectorySeparatorChar => throw new NotImp();

    public char PathSeparator => throw new NotImp();

    public char VolumeSeparatorChar => throw new NotImp();

    public IFileSystem FileSystem => throw new NotImp();

    [return: NotNullIfNotNull("path")]
    public string? ChangeExtension(string? path, string? extension)
    {
        throw new NotImp();
    }

    public string Combine(string path1, string path2)
    {
        if (!path1.EndsWith("/"))
            return path1 + "/" + path2;

        return path1 + path2;
    }

    public string Combine(string path1, string path2, string path3)
    {
        throw new NotImp();
    }

    public string Combine(string path1, string path2, string path3, string path4)
    {
        throw new NotImp();
    }

    public string Combine(params string[] paths)
    {
        throw new NotImp();
    }

    public bool EndsInDirectorySeparator(ReadOnlySpan<char> path)
    {
        throw new NotImp();
    }

    public bool EndsInDirectorySeparator(string path)
    {
        throw new NotImp();
    }

    public bool Exists([NotNullWhen(true)] string? path)
    {
        throw new NotImp();
    }

    public ReadOnlySpan<char> GetDirectoryName(ReadOnlySpan<char> path)
    {
        throw new NotImp();
    }

    public string? GetDirectoryName(string? path)
    {
        throw new NotImp();
    }

    public ReadOnlySpan<char> GetExtension(ReadOnlySpan<char> path)
    {
        throw new NotImp();
    }

    [return: NotNullIfNotNull("path")]
    public string? GetExtension(string? path)
    {
        throw new NotImp();
    }

    public ReadOnlySpan<char> GetFileName(ReadOnlySpan<char> path)
    {
        throw new NotImp();
    }

    [return: NotNullIfNotNull("path")]
    public string? GetFileName(string? path)
    {
        throw new NotImp();
    }

    public ReadOnlySpan<char> GetFileNameWithoutExtension(ReadOnlySpan<char> path)
    {
        throw new NotImp();
    }

    [return: NotNullIfNotNull("path")]
    public string? GetFileNameWithoutExtension(string? path)
    {
        throw new NotImp();
    }

    public string GetFullPath(string path)
    {
        throw new NotImp();
    }

    public string GetFullPath(string path, string basePath)
    {
        throw new NotImp();
    }

    public char[] GetInvalidFileNameChars()
    {
        throw new NotImp();
    }

    public char[] GetInvalidPathChars()
    {
        throw new NotImp();
    }

    public ReadOnlySpan<char> GetPathRoot(ReadOnlySpan<char> path)
    {
        throw new NotImp();
    }

    public string? GetPathRoot(string? path)
    {
        throw new NotImp();
    }

    public string GetRandomFileName()
    {
        throw new NotImp();
    }

    public string GetRelativePath(string relativeTo, string path)
    {
        throw new NotImp();
    }

    public string GetTempFileName()
    {
        throw new NotImp();
    }

    public string GetTempPath()
    {
        throw new NotImp();
    }

    public bool HasExtension(ReadOnlySpan<char> path)
    {
        throw new NotImp();
    }

    public bool HasExtension([NotNullWhen(true)] string? path)
    {
        throw new NotImp();
    }

    public bool IsPathFullyQualified(ReadOnlySpan<char> path)
    {
        throw new NotImp();
    }

    public bool IsPathFullyQualified(string path)
    {
        throw new NotImp();
    }

    public bool IsPathRooted(ReadOnlySpan<char> path)
    {
        throw new NotImp();
    }

    public bool IsPathRooted([NotNullWhen(true)] string? path)
    {
        throw new NotImp();
    }

    public string Join(ReadOnlySpan<char> path1, ReadOnlySpan<char> path2)
    {
        throw new NotImp();
    }

    public string Join(ReadOnlySpan<char> path1, ReadOnlySpan<char> path2, ReadOnlySpan<char> path3)
    {
        throw new NotImp();
    }

    public string Join(string? path1, string? path2)
    {
        throw new NotImp();
    }

    public string Join(string? path1, string? path2, string? path3)
    {
        throw new NotImp();
    }

    public string Join(params string?[] paths)
    {
        throw new NotImp();
    }

    public string Join(ReadOnlySpan<char> path1, ReadOnlySpan<char> path2, ReadOnlySpan<char> path3, ReadOnlySpan<char> path4)
    {
        throw new NotImp();
    }

    public string Join(string? path1, string? path2, string? path3, string? path4)
    {
        throw new NotImp();
    }

    public ReadOnlySpan<char> TrimEndingDirectorySeparator(ReadOnlySpan<char> path)
    {
        throw new NotImp();
    }

    public string TrimEndingDirectorySeparator(string path)
    {
        throw new NotImp();
    }

    public bool TryJoin(ReadOnlySpan<char> path1, ReadOnlySpan<char> path2, Span<char> destination, out int charsWritten)
    {
        throw new NotImp();
    }

    public bool TryJoin(ReadOnlySpan<char> path1, ReadOnlySpan<char> path2, ReadOnlySpan<char> path3, Span<char> destination, out int charsWritten)
    {
        throw new NotImp();
    }
}
class HttpDirInfo : IDirectoryInfo
{
    private readonly string path;

    public HttpDirInfo(string path)
    {
        this.path = path;
    }

    public IDirectoryInfo? Parent => throw new NotImp();

    public IDirectoryInfo Root => throw new NotImp();

    public IFileSystem FileSystem => throw new NotImp();

    public FileAttributes Attributes { get; set; }
    public DateTime CreationTime { get; set; }
    public DateTime CreationTimeUtc { get; set; }

    public bool Exists => throw new NotImp();

    public string Extension => throw new NotImp();

    public string FullName => throw new NotImp();

    public DateTime LastAccessTime { get; set; }
    public DateTime LastAccessTimeUtc { get; set; }
    public DateTime LastWriteTime { get; set; }
    public DateTime LastWriteTimeUtc { get; set; }

    public string? LinkTarget => throw new NotImp();

    public string Name => throw new NotImp();

    public UnixFileMode UnixFileMode { get; set; }

    public void Create()
    {
        throw new NotImp();
    }

    public void CreateAsSymbolicLink(string pathToTarget)
    {
        throw new NotImp();
    }

    public IDirectoryInfo CreateSubdirectory(string path)
    {
        throw new NotImp();
    }

    public void Delete(bool recursive)
    {
        throw new NotImp();
    }

    public void Delete()
    {
        throw new NotImp();
    }

    public IEnumerable<IDirectoryInfo> EnumerateDirectories()
    {
        throw new NotImp();
    }

    public IEnumerable<IDirectoryInfo> EnumerateDirectories(string searchPattern)
    {
        throw new NotImp();
    }

    public IEnumerable<IDirectoryInfo> EnumerateDirectories(string searchPattern, SearchOption searchOption)
    {
        throw new NotImp();
    }

    public IEnumerable<IDirectoryInfo> EnumerateDirectories(string searchPattern, EnumerationOptions enumerationOptions)
    {
        throw new NotImp();
    }

    public IEnumerable<IFileInfo> EnumerateFiles()
    {
        throw new NotImp();
    }

    public IEnumerable<IFileInfo> EnumerateFiles(string searchPattern)
    {
        throw new NotImp();
    }

    public IEnumerable<IFileInfo> EnumerateFiles(string searchPattern, SearchOption searchOption)
    {
        throw new NotImp();
    }

    public IEnumerable<IFileInfo> EnumerateFiles(string searchPattern, EnumerationOptions enumerationOptions)
    {
        throw new NotImp();
    }

    public IEnumerable<IFileSystemInfo> EnumerateFileSystemInfos()
    {
        throw new NotImp();
    }

    public IEnumerable<IFileSystemInfo> EnumerateFileSystemInfos(string searchPattern)
    {
        throw new NotImp();
    }

    public IEnumerable<IFileSystemInfo> EnumerateFileSystemInfos(string searchPattern, SearchOption searchOption)
    {
        throw new NotImp();
    }

    public IEnumerable<IFileSystemInfo> EnumerateFileSystemInfos(string searchPattern, EnumerationOptions enumerationOptions)
    {
        throw new NotImp();
    }

    public IDirectoryInfo[] GetDirectories()
    {
        throw new NotImp();
    }

    public IDirectoryInfo[] GetDirectories(string searchPattern)
    {
        throw new NotImp();
    }

    public IDirectoryInfo[] GetDirectories(string searchPattern, SearchOption searchOption)
    {
        throw new NotImp();
    }

    public IDirectoryInfo[] GetDirectories(string searchPattern, EnumerationOptions enumerationOptions)
    {
        throw new NotImp();
    }

    public IFileInfo[] GetFiles()
    {
        throw new NotImp();
    }

    public IFileInfo[] GetFiles(string searchPattern)
    {
        throw new NotImp();
    }

    public IFileInfo[] GetFiles(string searchPattern, SearchOption searchOption)
    {
        throw new NotImp();
    }

    public IFileInfo[] GetFiles(string searchPattern, EnumerationOptions enumerationOptions)
    {
        throw new NotImp();
    }

    public IFileSystemInfo[] GetFileSystemInfos()
    {
        throw new NotImp();
    }

    public IFileSystemInfo[] GetFileSystemInfos(string searchPattern)
    {
        throw new NotImp();
    }

    public IFileSystemInfo[] GetFileSystemInfos(string searchPattern, SearchOption searchOption)
    {
        throw new NotImp();
    }

    public IFileSystemInfo[] GetFileSystemInfos(string searchPattern, EnumerationOptions enumerationOptions)
    {
        throw new NotImp();
    }

    public void MoveTo(string destDirName)
    {
        throw new NotImp();
    }

    public void Refresh()
    {
        throw new NotImp();
    }

    public IFileSystemInfo? ResolveLinkTarget(bool returnFinalTarget)
    {
        throw new NotImp();
    }
}
class HttpDirectory : IDirectory
{
    public IFileSystem FileSystem => throw new NotImp();

    public IDirectoryInfo CreateDirectory(string path)
    {
        return new HttpDirInfo(path);
    }

    public IDirectoryInfo CreateDirectory(string path, UnixFileMode unixCreateMode)
    {
        throw new NotImp();
    }

    public IFileSystemInfo CreateSymbolicLink(string path, string pathToTarget)
    {
        throw new NotImp();
    }

    public IDirectoryInfo CreateTempSubdirectory(string? prefix = null)
    {
        throw new NotImp();
    }

    public void Delete(string path)
    {
        throw new NotImp();
    }

    public void Delete(string path, bool recursive)
    {
        throw new NotImp();
    }

    public IEnumerable<string> EnumerateDirectories(string path)
    {
        throw new NotImp();
    }

    public IEnumerable<string> EnumerateDirectories(string path, string searchPattern)
    {
        throw new NotImp();
    }

    public IEnumerable<string> EnumerateDirectories(string path, string searchPattern, SearchOption searchOption)
    {
        throw new NotImp();
    }

    public IEnumerable<string> EnumerateDirectories(string path, string searchPattern, EnumerationOptions enumerationOptions)
    {
        throw new NotImp();
    }

    public IEnumerable<string> EnumerateFiles(string path)
    {
        throw new NotImp();
    }

    public IEnumerable<string> EnumerateFiles(string path, string searchPattern)
    {
        throw new NotImp();
    }

    public IEnumerable<string> EnumerateFiles(string path, string searchPattern, SearchOption searchOption)
    {
        throw new NotImp();
    }

    public IEnumerable<string> EnumerateFiles(string path, string searchPattern, EnumerationOptions enumerationOptions)
    {
        throw new NotImp();
    }

    public IEnumerable<string> EnumerateFileSystemEntries(string path)
    {
        throw new NotImp();
    }

    public IEnumerable<string> EnumerateFileSystemEntries(string path, string searchPattern)
    {
        throw new NotImp();
    }

    public IEnumerable<string> EnumerateFileSystemEntries(string path, string searchPattern, SearchOption searchOption)
    {
        throw new NotImp();
    }

    public IEnumerable<string> EnumerateFileSystemEntries(string path, string searchPattern, EnumerationOptions enumerationOptions)
    {
        throw new NotImp();
    }

    public bool Exists([NotNullWhen(true)] string? path)
    {
        throw new NotImp();
    }

    public DateTime GetCreationTime(string path)
    {
        throw new NotImp();
    }

    public DateTime GetCreationTimeUtc(string path)
    {
        throw new NotImp();
    }

    public string GetCurrentDirectory()
    {
        throw new NotImp();
    }

    public string[] GetDirectories(string path)
    {
        throw new NotImp();
    }

    public string[] GetDirectories(string path, string searchPattern)
    {
        throw new NotImp();
    }

    public string[] GetDirectories(string path, string searchPattern, SearchOption searchOption)
    {
        throw new NotImp();
    }

    public string[] GetDirectories(string path, string searchPattern, EnumerationOptions enumerationOptions)
    {
        throw new NotImp();
    }

    public string GetDirectoryRoot(string path)
    {
        throw new NotImp();
    }

    public string[] GetFiles(string path)
    {
        throw new NotImp();
    }

    public string[] GetFiles(string path, string searchPattern)
    {
        throw new NotImp();
    }

    public string[] GetFiles(string path, string searchPattern, SearchOption searchOption)
    {
        throw new NotImp();
    }

    public string[] GetFiles(string path, string searchPattern, EnumerationOptions enumerationOptions)
    {
        throw new NotImp();
    }

    public string[] GetFileSystemEntries(string path)
    {
        throw new NotImp();
    }

    public string[] GetFileSystemEntries(string path, string searchPattern)
    {
        throw new NotImp();
    }

    public string[] GetFileSystemEntries(string path, string searchPattern, SearchOption searchOption)
    {
        throw new NotImp();
    }

    public string[] GetFileSystemEntries(string path, string searchPattern, EnumerationOptions enumerationOptions)
    {
        throw new NotImp();
    }

    public DateTime GetLastAccessTime(string path)
    {
        throw new NotImp();
    }

    public DateTime GetLastAccessTimeUtc(string path)
    {
        throw new NotImp();
    }

    public DateTime GetLastWriteTime(string path)
    {
        throw new NotImp();
    }

    public DateTime GetLastWriteTimeUtc(string path)
    {
        throw new NotImp();
    }

    public string[] GetLogicalDrives()
    {
        throw new NotImp();
    }

    public IDirectoryInfo? GetParent(string path)
    {
        throw new NotImp();
    }

    public void Move(string sourceDirName, string destDirName)
    {
        throw new NotImp();
    }

    public IFileSystemInfo? ResolveLinkTarget(string linkPath, bool returnFinalTarget)
    {
        throw new NotImp();
    }

    public void SetCreationTime(string path, DateTime creationTime)
    {
        throw new NotImp();
    }

    public void SetCreationTimeUtc(string path, DateTime creationTimeUtc)
    {
        throw new NotImp();
    }

    public void SetCurrentDirectory(string path)
    {
        throw new NotImp();
    }

    public void SetLastAccessTime(string path, DateTime lastAccessTime)
    {
        throw new NotImp();
    }

    public void SetLastAccessTimeUtc(string path, DateTime lastAccessTimeUtc)
    {
        throw new NotImp();
    }

    public void SetLastWriteTime(string path, DateTime lastWriteTime)
    {
        throw new NotImp();
    }

    public void SetLastWriteTimeUtc(string path, DateTime lastWriteTimeUtc)
    {
        throw new NotImp();
    }
}
class HttpFile : IFile
{
    private DataToTransmit data;


    public HttpFile(DataToTransmit data)
    {
        this.data = data;
    }

    public IFileSystem FileSystem => throw new NotImp();

    public void AppendAllLines(string path, IEnumerable<string> contents)
    {
        throw new NotImp();
    }

    public void AppendAllLines(string path, IEnumerable<string> contents, Encoding encoding)
    {
        throw new NotImp();
    }

    public Task AppendAllLinesAsync(string path, IEnumerable<string> contents, CancellationToken cancellationToken = default)
    {
        throw new NotImp();
    }

    public Task AppendAllLinesAsync(string path, IEnumerable<string> contents, Encoding encoding, CancellationToken cancellationToken = default)
    {
        throw new NotImp();
    }

    public void AppendAllText(string path, string? contents)
    {
        throw new NotImp();
    }

    public void AppendAllText(string path, string? contents, Encoding encoding)
    {
        throw new NotImp();
    }

    public Task AppendAllTextAsync(string path, string? contents, CancellationToken cancellationToken = default)
    {
        throw new NotImp();
    }

    public Task AppendAllTextAsync(string path, string? contents, Encoding encoding, CancellationToken cancellationToken = default)
    {
        throw new NotImp();
    }

    public StreamWriter AppendText(string path)
    {
        throw new NotImp();
    }

    public void Copy(string sourceFileName, string destFileName)
    {
        throw new NotImp();
    }

    public void Copy(string sourceFileName, string destFileName, bool overwrite)
    {
        throw new NotImp();
    }

    public FileSystemStream Create(string path)
    {
        throw new NotImp();
    }

    public FileSystemStream Create(string path, int bufferSize)
    {
        throw new NotImp();
    }

    public FileSystemStream Create(string path, int bufferSize, FileOptions options)
    {
        throw new NotImp();
    }

    public IFileSystemInfo CreateSymbolicLink(string path, string pathToTarget)
    {
        throw new NotImp();
    }

    public StreamWriter CreateText(string path)
    {
        throw new NotImp();
    }

    public void Decrypt(string path)
    {
        throw new NotImp();
    }

    public void Delete(string path)
    {
        throw new NotImp();
    }

    public void Encrypt(string path)
    {
        throw new NotImp();
    }

    public bool Exists([NotNullWhen(true)] string? path)
    {
        throw new NotImp();
    }

    public FileAttributes GetAttributes(string path)
    {
        throw new NotImp();
    }

    public FileAttributes GetAttributes(SafeFileHandle fileHandle)
    {
        throw new NotImp();
    }

    public DateTime GetCreationTime(string path)
    {
        throw new NotImp();
    }

    public DateTime GetCreationTime(SafeFileHandle fileHandle)
    {
        throw new NotImp();
    }

    public DateTime GetCreationTimeUtc(string path)
    {
        throw new NotImp();
    }

    public DateTime GetCreationTimeUtc(SafeFileHandle fileHandle)
    {
        throw new NotImp();
    }

    public DateTime GetLastAccessTime(string path)
    {
        throw new NotImp();
    }

    public DateTime GetLastAccessTime(SafeFileHandle fileHandle)
    {
        throw new NotImp();
    }

    public DateTime GetLastAccessTimeUtc(string path)
    {
        throw new NotImp();
    }

    public DateTime GetLastAccessTimeUtc(SafeFileHandle fileHandle)
    {
        throw new NotImp();
    }

    public DateTime GetLastWriteTime(string path)
    {
        throw new NotImp();
    }

    public DateTime GetLastWriteTime(SafeFileHandle fileHandle)
    {
        throw new NotImp();
    }

    public DateTime GetLastWriteTimeUtc(string path)
    {
        throw new NotImp();
    }

    public DateTime GetLastWriteTimeUtc(SafeFileHandle fileHandle)
    {
        throw new NotImp();
    }

    public UnixFileMode GetUnixFileMode(string path)
    {
        throw new NotImp();
    }

    public UnixFileMode GetUnixFileMode(SafeFileHandle fileHandle)
    {
        throw new NotImp();
    }

    public void Move(string sourceFileName, string destFileName)
    {
        throw new NotImp();
    }

    public void Move(string sourceFileName, string destFileName, bool overwrite)
    {
        throw new NotImp();
    }

    public FileSystemStream Open(string path, FileMode mode)
    {
        throw new NotImp();
    }

    public FileSystemStream Open(string path, FileMode mode, FileAccess access)
    {
        throw new NotImp();
    }

    public FileSystemStream Open(string path, FileMode mode, FileAccess access, FileShare share)
    {
        throw new NotImp();
    }

    public FileSystemStream Open(string path, FileStreamOptions options)
    {
        throw new NotImp();
    }

    public FileSystemStream OpenRead(string path)
    {
        return data.func(path);

        //var uri = new Uri(path);
        //string req = uri.PathAndQuery;
        //var bytes = http.GetByteArrayAsync(req).ConfigureAwait(true).GetAwaiter().GetResult();
        //var memoryStream = new MemoryStream(bytes);
        //memoryStream.Position = 0;
        //var stream = new HttpFileStream(memoryStream, path, true);
        //return stream;
    }

    public StreamReader OpenText(string path)
    {
        throw new NotImp();
    }

    public FileSystemStream OpenWrite(string path)
    {
        throw new NotImp();
    }

    public byte[] ReadAllBytes(string path)
    {
        throw new NotImp();
    }

    public Task<byte[]> ReadAllBytesAsync(string path, CancellationToken cancellationToken = default)
    {
        throw new NotImp();
    }

    public string[] ReadAllLines(string path)
    {
        throw new NotImp();
    }

    public string[] ReadAllLines(string path, Encoding encoding)
    {
        throw new NotImp();
    }

    public Task<string[]> ReadAllLinesAsync(string path, CancellationToken cancellationToken = default)
    {
        throw new NotImp();
    }

    public Task<string[]> ReadAllLinesAsync(string path, Encoding encoding, CancellationToken cancellationToken = default)
    {
        throw new NotImp();
    }

    public string ReadAllText(string path)
    {
        throw new NotImp();
    }

    public string ReadAllText(string path, Encoding encoding)
    {
        throw new NotImp();
    }

    public Task<string> ReadAllTextAsync(string path, CancellationToken cancellationToken = default)
    {
        throw new NotImp();
    }

    public Task<string> ReadAllTextAsync(string path, Encoding encoding, CancellationToken cancellationToken = default)
    {
        throw new NotImp();
    }

    public IEnumerable<string> ReadLines(string path)
    {
        throw new NotImp();
    }

    public IEnumerable<string> ReadLines(string path, Encoding encoding)
    {
        throw new NotImp();
    }

    public IAsyncEnumerable<string> ReadLinesAsync(string path, CancellationToken cancellationToken = default)
    {
        throw new NotImp();
    }

    public IAsyncEnumerable<string> ReadLinesAsync(string path, Encoding encoding, CancellationToken cancellationToken = default)
    {
        throw new NotImp();
    }

    public void Replace(string sourceFileName, string destinationFileName, string? destinationBackupFileName)
    {
        throw new NotImp();
    }

    public void Replace(string sourceFileName, string destinationFileName, string? destinationBackupFileName, bool ignoreMetadataErrors)
    {
        throw new NotImp();
    }

    public IFileSystemInfo? ResolveLinkTarget(string linkPath, bool returnFinalTarget)
    {
        throw new NotImp();
    }

    public void SetAttributes(string path, FileAttributes fileAttributes)
    {
        throw new NotImp();
    }

    public void SetAttributes(SafeFileHandle fileHandle, FileAttributes fileAttributes)
    {
        throw new NotImp();
    }

    public void SetCreationTime(string path, DateTime creationTime)
    {
        throw new NotImp();
    }

    public void SetCreationTime(SafeFileHandle fileHandle, DateTime creationTime)
    {
        throw new NotImp();
    }

    public void SetCreationTimeUtc(string path, DateTime creationTimeUtc)
    {
        throw new NotImp();
    }

    public void SetCreationTimeUtc(SafeFileHandle fileHandle, DateTime creationTimeUtc)
    {
        throw new NotImp();
    }

    public void SetLastAccessTime(string path, DateTime lastAccessTime)
    {
        throw new NotImp();
    }

    public void SetLastAccessTime(SafeFileHandle fileHandle, DateTime lastAccessTime)
    {
        throw new NotImp();
    }

    public void SetLastAccessTimeUtc(string path, DateTime lastAccessTimeUtc)
    {
        throw new NotImp();
    }

    public void SetLastAccessTimeUtc(SafeFileHandle fileHandle, DateTime lastAccessTimeUtc)
    {
        throw new NotImp();
    }

    public void SetLastWriteTime(string path, DateTime lastWriteTime)
    {
        throw new NotImp();
    }

    public void SetLastWriteTime(SafeFileHandle fileHandle, DateTime lastWriteTime)
    {
        throw new NotImp();
    }

    public void SetLastWriteTimeUtc(string path, DateTime lastWriteTimeUtc)
    {
        throw new NotImp();
    }

    public void SetLastWriteTimeUtc(SafeFileHandle fileHandle, DateTime lastWriteTimeUtc)
    {
        throw new NotImp();
    }

    public void SetUnixFileMode(string path, UnixFileMode mode)
    {
        throw new NotImp();
    }

    public void SetUnixFileMode(SafeFileHandle fileHandle, UnixFileMode mode)
    {
        throw new NotImp();
    }

    public void WriteAllBytes(string path, byte[] bytes)
    {
        throw new NotImp();
    }

    public Task WriteAllBytesAsync(string path, byte[] bytes, CancellationToken cancellationToken = default)
    {
        throw new NotImp();
    }

    public void WriteAllLines(string path, string[] contents)
    {
        throw new NotImp();
    }

    public void WriteAllLines(string path, IEnumerable<string> contents)
    {
        throw new NotImp();
    }

    public void WriteAllLines(string path, string[] contents, Encoding encoding)
    {
        throw new NotImp();
    }

    public void WriteAllLines(string path, IEnumerable<string> contents, Encoding encoding)
    {
        throw new NotImp();
    }

    public Task WriteAllLinesAsync(string path, IEnumerable<string> contents, CancellationToken cancellationToken = default)
    {
        throw new NotImp();
    }

    public Task WriteAllLinesAsync(string path, IEnumerable<string> contents, Encoding encoding, CancellationToken cancellationToken = default)
    {
        throw new NotImp();
    }

    public void WriteAllText(string path, string? contents)
    {
        throw new NotImp();
    }

    public void WriteAllText(string path, string? contents, Encoding encoding)
    {
        throw new NotImp();
    }

    public Task WriteAllTextAsync(string path, string? contents, CancellationToken cancellationToken = default)
    {
        throw new NotImp();
    }

    public Task WriteAllTextAsync(string path, string? contents, Encoding encoding, CancellationToken cancellationToken = default)
    {
        throw new NotImp();
    }
}
class HttpFileSystem : IFileSystem
{
    private HttpPath path;
    private HttpDirectory dir;
    private HttpFile file;
    private DataToTransmit data;

        

    public HttpFileSystem(DataToTransmit data)
    {
        this.data = data;
        this.path = new HttpPath();
        this.dir = new HttpDirectory();
        this.file = new HttpFile(data);
    }

    public IDirectory Directory => dir;

    public IDirectoryInfoFactory DirectoryInfo => throw new NotImp();

    public IDriveInfoFactory DriveInfo => throw new NotImp();

    public IFile File => file;

    public IFileInfoFactory FileInfo => throw new NotImp();

    public IFileStreamFactory FileStream => throw new NotImp();

    public IFileSystemWatcherFactory FileSystemWatcher => throw new NotImp();

    public IPath Path => path;
}
