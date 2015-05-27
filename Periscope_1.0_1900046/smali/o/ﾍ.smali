.class public Lo/ﾍ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ﭥ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\ufb65<Lo/\uff8c;>;"
    }
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private final jH:Lo/ﭥ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufb65<Ljava/io/InputStream;>;"
        }
    .end annotation
.end field

.field private final jI:Lo/ﭥ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufb65<Landroid/os/ParcelFileDescriptor;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/ﭥ;Lo/ﭥ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufb65<Ljava/io/InputStream;>;Lo/\ufb65<Landroid/os/ParcelFileDescriptor;>;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lo/ﾍ;->jH:Lo/ﭥ;

    .line 23
    iput-object p2, p0, Lo/ﾍ;->jI:Lo/ﭥ;

    .line 24
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 2

    .line 37
    iget-object v0, p0, Lo/ﾍ;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/ﾍ;->jH:Lo/ﭥ;

    invoke-interface {v1}, Lo/ﭥ;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/ﾍ;->jI:Lo/ﭥ;

    invoke-interface {v1}, Lo/ﭥ;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ﾍ;->id:Ljava/lang/String;

    .line 40
    :cond_0
    iget-object v0, p0, Lo/ﾍ;->id:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic ˊ(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 1

    .line 15
    move-object v0, p1

    check-cast v0, Lo/ﾌ;

    invoke-virtual {p0, v0, p2}, Lo/ﾍ;->ˊ(Lo/ﾌ;Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method

.method public ˊ(Lo/ﾌ;Ljava/io/OutputStream;)Z
    .locals 2

    .line 28
    invoke-virtual {p1}, Lo/ﾌ;->冫()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lo/ﾍ;->jH:Lo/ﭥ;

    invoke-virtual {p1}, Lo/ﾌ;->冫()Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lo/ﭥ;->ˊ(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result v0

    return v0

    .line 31
    :cond_0
    iget-object v0, p0, Lo/ﾍ;->jI:Lo/ﭥ;

    invoke-virtual {p1}, Lo/ﾌ;->לּ()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lo/ﭥ;->ˊ(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method
