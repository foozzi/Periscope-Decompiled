.class Lo/so;
.super Lo/sn$ˊ;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/sn$\u02ca<Lo/sn;>;"
    }
.end annotation


# instance fields
.field final synthetic Yb:Ljava/io/InputStream;

.field final synthetic Yc:Ljava/io/OutputStream;

.field final synthetic Yd:Lo/sn;


# direct methods
.method constructor <init>(Lo/sn;Ljava/io/Closeable;ZLjava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    .line 2402
    iput-object p1, p0, Lo/so;->Yd:Lo/sn;

    iput-object p4, p0, Lo/so;->Yb:Ljava/io/InputStream;

    iput-object p5, p0, Lo/so;->Yc:Ljava/io/OutputStream;

    invoke-direct {p0, p2, p3}, Lo/sn$ˊ;-><init>(Ljava/io/Closeable;Z)V

    return-void
.end method


# virtual methods
.method public dE()Lo/sn;
    .locals 4

    .line 2406
    iget-object v0, p0, Lo/so;->Yd:Lo/sn;

    invoke-static {v0}, Lo/sn;->ˊ(Lo/sn;)I

    move-result v0

    new-array v2, v0, [B

    .line 2408
    :goto_0
    iget-object v0, p0, Lo/so;->Yb:Ljava/io/InputStream;

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    move v3, v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2409
    iget-object v0, p0, Lo/so;->Yc:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 2410
    :cond_0
    iget-object v0, p0, Lo/so;->Yd:Lo/sn;

    return-object v0
.end method

.method public synthetic run()Ljava/lang/Object;
    .locals 1

    .line 2402
    invoke-virtual {p0}, Lo/so;->dE()Lo/sn;

    move-result-object v0

    return-object v0
.end method
