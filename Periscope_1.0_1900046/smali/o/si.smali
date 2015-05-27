.class public Lo/si;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/sc;


# instance fields
.field private final XF:Ljava/io/File;

.field private final XG:Ljava/lang/String;

.field private final XH:Ljava/io/File;

.field private XI:Lo/qu;

.field private XJ:Ljava/io/File;

.field private final dV:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lo/si;->dV:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lo/si;->XF:Ljava/io/File;

    .line 37
    iput-object p4, p0, Lo/si;->XG:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lo/si;->XF:Ljava/io/File;

    invoke-direct {v0, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lo/si;->XH:Ljava/io/File;

    .line 41
    new-instance v0, Lo/qu;

    iget-object v1, p0, Lo/si;->XH:Ljava/io/File;

    invoke-direct {v0, v1}, Lo/qu;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lo/si;->XI:Lo/qu;

    .line 43
    invoke-direct {p0}, Lo/si;->dm()V

    .line 44
    return-void
.end method

.method private dm()V
    .locals 3

    .line 47
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lo/si;->XF:Ljava/io/File;

    iget-object v2, p0, Lo/si;->XG:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lo/si;->XJ:Ljava/io/File;

    .line 48
    iget-object v0, p0, Lo/si;->XJ:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lo/si;->XJ:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 51
    :cond_0
    return-void
.end method

.method private ˋ(Ljava/io/File;Ljava/io/File;)V
    .locals 4

    .line 83
    const/4 v1, 0x0

    .line 84
    const/4 v2, 0x0

    .line 87
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v0

    .line 88
    invoke-virtual {p0, p2}, Lo/si;->ʽ(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object v0

    move-object v1, v0

    .line 89
    const/16 v0, 0x400

    new-array v0, v0, [B

    invoke-static {v2, v1, v0}, Lo/qh;->ˊ(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    const-string v0, "Failed to close file input stream"

    invoke-static {v2, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 92
    const-string v0, "Failed to close output stream"

    invoke-static {v1, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 94
    goto :goto_0

    .line 91
    :catchall_0
    move-exception v3

    const-string v0, "Failed to close file input stream"

    invoke-static {v2, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 92
    const-string v0, "Failed to close output stream"

    invoke-static {v1, v0}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    throw v3

    .line 95
    :goto_0
    return-void
.end method


# virtual methods
.method public di()I
    .locals 1

    .line 60
    iget-object v0, p0, Lo/si;->XI:Lo/qu;

    invoke-virtual {v0}, Lo/qu;->cJ()I

    move-result v0

    return v0
.end method

.method public dj()Z
    .locals 1

    .line 154
    iget-object v0, p0, Lo/si;->XI:Lo/qu;

    invoke-virtual {v0}, Lo/qu;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public dk()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/List<Ljava/io/File;>;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lo/si;->XJ:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public dl()V
    .locals 2

    .line 146
    :try_start_0
    iget-object v0, p0, Lo/si;->XI:Lo/qu;

    invoke-virtual {v0}, Lo/qu;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    goto :goto_0

    .line 147
    :catch_0
    move-exception v1

    .line 149
    :goto_0
    iget-object v0, p0, Lo/si;->XH:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 150
    return-void
.end method

.method public ʽ(Ljava/io/File;)Ljava/io/OutputStream;
    .locals 1

    .line 103
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public ˍ(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Ljava/io/File;>;)V"
        }
    .end annotation

    .line 131
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    move-object v6, v0

    .line 132
    iget-object v0, p0, Lo/si;->dV:Landroid/content/Context;

    const-string v1, "deleting sent analytics file %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/qh;->ᐝ(Landroid/content/Context;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 135
    goto :goto_0

    .line 136
    :cond_0
    return-void
.end method

.method public ˍ([B)V
    .locals 1

    .line 55
    iget-object v0, p0, Lo/si;->XI:Lo/qu;

    invoke-virtual {v0, p1}, Lo/qu;->ˍ([B)V

    .line 56
    return-void
.end method

.method public ᕐ(Ljava/lang/String;)V
    .locals 3

    .line 65
    iget-object v0, p0, Lo/si;->XI:Lo/qu;

    invoke-virtual {v0}, Lo/qu;->close()V

    .line 67
    iget-object v0, p0, Lo/si;->XH:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lo/si;->XJ:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lo/si;->ˋ(Ljava/io/File;Ljava/io/File;)V

    .line 69
    new-instance v0, Lo/qu;

    iget-object v1, p0, Lo/si;->XH:Ljava/io/File;

    invoke-direct {v0, v1}, Lo/qu;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lo/si;->XI:Lo/qu;

    .line 70
    return-void
.end method

.method public ᵓ(II)Z
    .locals 1

    .line 159
    iget-object v0, p0, Lo/si;->XI:Lo/qu;

    invoke-virtual {v0, p1, p2}, Lo/qu;->ᒢ(II)Z

    move-result v0

    return v0
.end method

.method public ﮄ(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)Ljava/util/List<Ljava/io/File;>;"
        }
    .end annotation

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 120
    iget-object v0, p0, Lo/si;->XJ:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 121
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p1, :cond_0

    goto :goto_1

    .line 120
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 126
    :cond_1
    :goto_1
    return-object v1
.end method
