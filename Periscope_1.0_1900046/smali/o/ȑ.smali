.class Lo/ȑ;
.super Ljava/io/FileOutputStream;
.source ""


# static fields
.field public static final nw:Ljava/io/FilenameFilter;


# instance fields
.field private closed:Z

.field private final nt:Ljava/lang/String;

.field private nu:Ljava/io/File;

.field private nv:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    new-instance v0, Lo/ț;

    invoke-direct {v0}, Lo/ț;-><init>()V

    sput-object v0, Lo/ȑ;->nw:Ljava/io/FilenameFilter;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    .line 40
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".cls_temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ȑ;->closed:Z

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ȑ;->nt:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lo/ȑ;->nt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".cls_temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lo/ȑ;->nu:Ljava/io/File;

    .line 43
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 5

    monitor-enter p0

    .line 47
    :try_start_0
    iget-boolean v0, p0, Lo/ȑ;->closed:Z

    if-eqz v0, :cond_0

    .line 48
    monitor-exit p0

    return-void

    .line 50
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ȑ;->closed:Z

    .line 51
    invoke-super {p0}, Ljava/io/FileOutputStream;->flush()V

    .line 52
    invoke-super {p0}, Ljava/io/FileOutputStream;->close()V

    .line 54
    new-instance v3, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/ȑ;->nt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".cls"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lo/ȑ;->nu:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ȑ;->nu:Ljava/io/File;

    .line 58
    iput-object v3, p0, Lo/ȑ;->nv:Ljava/io/File;

    goto :goto_1

    .line 60
    :cond_1
    const-string v4, ""

    .line 61
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    const-string v4, " (target already exists)"

    goto :goto_0

    .line 63
    :cond_2
    iget-object v0, p0, Lo/ȑ;->nu:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 64
    const-string v4, " (source does not exist)"

    .line 66
    :cond_3
    :goto_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not rename temp file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/ȑ;->nu:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public ﮞ()V
    .locals 1

    .line 79
    iget-boolean v0, p0, Lo/ȑ;->closed:Z

    if-eqz v0, :cond_0

    .line 80
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ȑ;->closed:Z

    .line 83
    invoke-super {p0}, Ljava/io/FileOutputStream;->flush()V

    .line 84
    invoke-super {p0}, Ljava/io/FileOutputStream;->close()V

    .line 85
    return-void
.end method
