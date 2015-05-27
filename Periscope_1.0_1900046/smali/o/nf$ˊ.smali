.class Lo/nf$ˊ;
.super Lo/lz;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/nf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02ca"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/lz<Lo/mr;>;"
    }
.end annotation


# instance fields
.field private final QR:Lo/mh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/mh<Lo/mr;>;"
        }
    .end annotation
.end field

.field private final Qz:Lo/lz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/lz<Lo/mr;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/mh;Lo/lz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/mh<Lo/mr;>;Lo/lz<Lo/mr;>;)V"
        }
    .end annotation

    .line 204
    invoke-direct {p0}, Lo/lz;-><init>()V

    .line 205
    iput-object p1, p0, Lo/nf$ˊ;->QR:Lo/mh;

    .line 206
    iput-object p2, p0, Lo/nf$ˊ;->Qz:Lo/lz;

    .line 207
    return-void
.end method


# virtual methods
.method public ˊ(Lo/mf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/mf<Lo/mr;>;)V"
        }
    .end annotation

    .line 211
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Authorization completed successfully"

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lo/nf$ˊ;->QR:Lo/mh;

    iget-object v1, p1, Lo/mf;->data:Ljava/lang/Object;

    check-cast v1, Lo/mg;

    invoke-interface {v0, v1}, Lo/mh;->ˊ(Lo/mg;)V

    .line 213
    iget-object v0, p0, Lo/nf$ˊ;->Qz:Lo/lz;

    invoke-virtual {v0, p1}, Lo/lz;->ˊ(Lo/mf;)V

    .line 214
    return-void
.end method

.method public ˊ(Lo/mo;)V
    .locals 3

    .line 218
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Authorization completed with an error"

    invoke-interface {v0, v1, v2, p1}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    iget-object v0, p0, Lo/nf$ˊ;->Qz:Lo/lz;

    invoke-virtual {v0, p1}, Lo/lz;->ˊ(Lo/mo;)V

    .line 221
    return-void
.end method
