.class Lo/qb;
.super Lo/qg;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Vr:Lo/pz;

.field final synthetic Vs:Lo/qa;


# direct methods
.method constructor <init>(Lo/qa;Lo/pz;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lo/qb;->Vs:Lo/qa;

    iput-object p2, p0, Lo/qb;->Vr:Lo/pz;

    invoke-direct {p0}, Lo/qg;-><init>()V

    return-void
.end method


# virtual methods
.method public ᔮ()V
    .locals 4

    .line 53
    iget-object v0, p0, Lo/qb;->Vs:Lo/qa;

    invoke-static {v0}, Lo/qa;->ˊ(Lo/qa;)Lo/pz;

    move-result-object v3

    .line 54
    iget-object v0, p0, Lo/qb;->Vr:Lo/pz;

    invoke-virtual {v0, v3}, Lo/pz;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Asychronously getting Advertising Info and storing it to preferences"

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lo/qb;->Vs:Lo/qa;

    invoke-static {v0, v3}, Lo/qa;->ˊ(Lo/qa;Lo/pz;)V

    .line 59
    :cond_0
    return-void
.end method
