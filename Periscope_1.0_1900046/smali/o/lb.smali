.class Lo/lb;
.super Lo/ll;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic OA:Lo/ku;

.field final synthetic OB:Lo/ki;


# direct methods
.method constructor <init>(Lo/ku;Lo/ki;)V
    .locals 0

    .line 981
    iput-object p1, p0, Lo/lb;->OA:Lo/ku;

    iput-object p2, p0, Lo/lb;->OB:Lo/ki;

    invoke-direct {p0}, Lo/ll;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Lo/kn;Ljava/lang/String;)V
    .locals 6

    .line 983
    iget-object v0, p0, Lo/lb;->OA:Lo/ku;

    const-string v1, ""

    move-object v2, p2

    const-string v3, "payload"

    iget-object v4, p0, Lo/lb;->OB:Lo/ki;

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lo/ku;->ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/ki;I)V

    .line 984
    return-void
.end method

.method public ˊ(Lo/kn;Lo/lg;)V
    .locals 2

    .line 987
    iget-object v0, p0, Lo/lb;->OB:Lo/ki;

    const-string v1, ""

    invoke-virtual {v0, v1, p2}, Lo/ki;->ˊ(Ljava/lang/String;Lo/lg;)V

    .line 988
    return-void
.end method
