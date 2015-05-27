.class Lo/lc;
.super Lo/ll;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic OF:Lo/ku$if;


# direct methods
.method constructor <init>(Lo/ku$if;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lo/lc;->OF:Lo/ku$if;

    invoke-direct {p0}, Lo/ll;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Lo/kn;Ljava/lang/String;)V
    .locals 6

    .line 160
    new-instance v2, Lo/gb;

    invoke-direct {v2}, Lo/gb;-><init>()V

    .line 161
    invoke-virtual {v2, p2}, Lo/gb;->ᐤ(Ljava/lang/String;)Lo/fw;

    move-result-object v3

    .line 162
    invoke-virtual {v3}, Lo/fw;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v3}, Lo/fw;->r()Lo/fz;

    move-result-object v4

    .line 164
    const-string v0, "message"

    invoke-virtual {v4, v0}, Lo/fz;->เ(Ljava/lang/String;)Lo/fw;

    move-result-object v5

    .line 165
    iget-object v0, p0, Lo/lc;->OF:Lo/ku$if;

    invoke-static {v0}, Lo/ku$if;->ˊ(Lo/ku$if;)Lo/ki;

    move-result-object v0

    iget-object v1, p0, Lo/lc;->OF:Lo/ku$if;

    iget-object v1, v1, Lo/ku$if;->OA:Lo/ku;

    invoke-static {v1}, Lo/ku;->ˎ(Lo/ku;)Lo/lp;

    move-result-object v1

    invoke-virtual {v1}, Lo/lp;->aJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lo/ki;->ˋ(Ljava/lang/String;Lo/fw;)V

    .line 169
    goto :goto_0

    .line 170
    :cond_0
    sget-object v0, Lo/lg;->ON:Lo/lg;

    const/4 v1, 0x1

    invoke-static {v0, v1, p2}, Lo/lg;->ˊ(Lo/lg;ILjava/lang/String;)Lo/lg;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lo/lc;->ˊ(Lo/kn;Lo/lg;)V

    .line 177
    :goto_0
    return-void
.end method

.method public ˊ(Lo/kn;Lo/lg;)V
    .locals 2

    .line 180
    iget-object v0, p0, Lo/lc;->OF:Lo/ku$if;

    invoke-static {v0}, Lo/ku$if;->ˊ(Lo/ku$if;)Lo/ki;

    move-result-object v0

    iget-object v1, p0, Lo/lc;->OF:Lo/ku$if;

    iget-object v1, v1, Lo/ku$if;->OA:Lo/ku;

    invoke-static {v1}, Lo/ku;->ˎ(Lo/ku;)Lo/lp;

    move-result-object v1

    invoke-virtual {v1}, Lo/lp;->aJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lo/ki;->ˊ(Ljava/lang/String;Lo/lg;)V

    .line 181
    return-void
.end method
