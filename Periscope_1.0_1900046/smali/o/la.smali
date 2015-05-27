.class Lo/la;
.super Lo/ll;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PublishResponseHandler"
.end annotation


# instance fields
.field final synthetic OA:Lo/ku;

.field final synthetic OC:Ljava/lang/String;

.field final synthetic OD:Lo/ki;


# direct methods
.method constructor <init>(Lo/ku;Lo/ki;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 878
    iput-object p1, p0, Lo/la;->OA:Lo/ku;

    iput-object p2, p0, Lo/la;->OD:Lo/ki;

    iput-object p3, p0, Lo/la;->OC:Ljava/lang/String;

    invoke-direct {p0}, Lo/ll;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Lo/kn;Ljava/lang/String;)V
    .locals 5

    .line 880
    new-instance v3, Lo/gb;

    invoke-direct {v3}, Lo/gb;-><init>()V

    .line 881
    invoke-virtual {v3, p2}, Lo/gb;->ᐤ(Ljava/lang/String;)Lo/fw;

    move-result-object v4

    .line 882
    invoke-virtual {v4}, Lo/fw;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lo/la;->OD:Lo/ki;

    iget-object v1, p0, Lo/la;->OC:Ljava/lang/String;

    invoke-virtual {v4}, Lo/fw;->s()Lo/ft;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/ki;->ˋ(Ljava/lang/String;Lo/fw;)V

    goto :goto_0

    .line 885
    :cond_0
    sget-object v0, Lo/lg;->ON:Lo/lg;

    const/4 v1, 0x1

    invoke-static {v0, v1, p2}, Lo/lg;->ˊ(Lo/lg;ILjava/lang/String;)Lo/lg;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lo/la;->ˊ(Lo/kn;Lo/lg;)V

    .line 888
    :goto_0
    return-void
.end method

.method public ˊ(Lo/kn;Lo/lg;)V
    .locals 2

    .line 891
    iget-object v0, p0, Lo/la;->OD:Lo/ki;

    iget-object v1, p0, Lo/la;->OC:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lo/ki;->ˊ(Ljava/lang/String;Lo/lg;)V

    .line 892
    return-void
.end method
