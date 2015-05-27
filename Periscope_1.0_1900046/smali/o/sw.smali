.class public Lo/sw;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final Yp:Ljava/lang/String;

.field private final Yq:Ljava/lang/String;

.field private final dV:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lo/pq;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Lo/pq;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get directory before context has been set. Call Fabric.with() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_0
    invoke-virtual {p1}, Lo/pq;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lo/sw;->dV:Landroid/content/Context;

    .line 27
    invoke-virtual {p1}, Lo/pq;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/sw;->Yp:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/sw;->dV:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/sw;->Yq:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public getFilesDir()Ljava/io/File;
    .locals 1

    .line 65
    iget-object v0, p0, Lo/sw;->dV:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/sw;->ͺ(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method ͺ(Ljava/io/File;)Ljava/io/File;
    .locals 3

    .line 89
    if-eqz p1, :cond_2

    .line 90
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    :cond_0
    return-object p1

    .line 93
    :cond_1
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Couldn\'t create file"

    invoke-interface {v0, v1, v2}, Lo/ps;->ᐧ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_2
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Null File"

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
