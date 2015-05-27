.class Lo/ne;
.super Lo/lz;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/lz<Lo/oo;>;"
    }
.end annotation


# instance fields
.field final synthetic QP:Lo/nd;


# direct methods
.method constructor <init>(Lo/nd;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lo/ne;->QP:Lo/nd;

    invoke-direct {p0}, Lo/lz;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Lo/mf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/mf<Lo/oo;>;)V"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lo/ne;->QP:Lo/nd;

    iget-object v1, p1, Lo/mf;->data:Ljava/lang/Object;

    check-cast v1, Lo/oo;

    invoke-virtual {v0, v1}, Lo/nd;->ˊ(Lo/oo;)V

    .line 35
    return-void
.end method

.method public ˊ(Lo/mo;)V
    .locals 3

    .line 39
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Failed to get email address."

    invoke-interface {v0, v1, v2, p1}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    iget-object v0, p0, Lo/ne;->QP:Lo/nd;

    new-instance v1, Lo/mo;

    const-string v2, "Failed to get email address."

    invoke-direct {v1, v2}, Lo/mo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/nd;->ˋ(Lo/mo;)V

    .line 43
    return-void
.end method
