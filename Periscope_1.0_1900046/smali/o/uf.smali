.class Lo/uf;
.super Ljava/io/OutputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZH:Lo/ue;


# direct methods
.method constructor <init>(Lo/ue;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lo/uf;->ZH:Lo/ue;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 80
    return-void
.end method

.method public flush()V
    .locals 0

    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".outputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 2

    .line 69
    iget-object v0, p0, Lo/uf;->ZH:Lo/ue;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lo/ue;->ﺜ(I)Lo/ue;

    .line 70
    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 73
    iget-object v0, p0, Lo/uf;->ZH:Lo/ue;

    invoke-virtual {v0, p1, p2, p3}, Lo/ue;->ˉ([BII)Lo/ue;

    .line 74
    return-void
.end method
