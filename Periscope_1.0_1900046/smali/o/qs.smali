.class public Lo/qs;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final Wo:Lo/px;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/px<Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field private final Wp:Lo/pv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/pv<Ljava/lang/String;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lo/qt;

    invoke-direct {v0, p0}, Lo/qt;-><init>(Lo/qs;)V

    iput-object v0, p0, Lo/qs;->Wo:Lo/px;

    .line 35
    new-instance v0, Lo/pv;

    invoke-direct {v0}, Lo/pv;-><init>()V

    iput-object v0, p0, Lo/qs;->Wp:Lo/pv;

    .line 36
    return-void
.end method


# virtual methods
.method public ᵀ(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 40
    :try_start_0
    iget-object v0, p0, Lo/qs;->Wp:Lo/pv;

    iget-object v1, p0, Lo/qs;->Wo:Lo/px;

    invoke-virtual {v0, p1, v1}, Lo/pv;->ˊ(Landroid/content/Context;Lo/px;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 42
    const-string v0, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    return-object v0

    .line 43
    :catch_0
    move-exception v3

    .line 44
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Failed to determine installer package name"

    invoke-interface {v0, v1, v2, v3}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method
