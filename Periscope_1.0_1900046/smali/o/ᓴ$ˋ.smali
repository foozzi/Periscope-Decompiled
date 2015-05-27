.class Lo/ᓴ$ˋ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᓴ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u02cb"
.end annotation


# instance fields
.field private Ĵ:Lo/ᓴ$ˏ;

.field final synthetic ﾓ:Lo/ᓴ;


# direct methods
.method public constructor <init>(Lo/ᓴ;Lo/ᓴ$ˏ;)V
    .locals 0

    .line 749
    iput-object p1, p0, Lo/ᓴ$ˋ;->ﾓ:Lo/ᓴ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 750
    iput-object p2, p0, Lo/ᓴ$ˋ;->Ĵ:Lo/ᓴ$ˏ;

    .line 751
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 754
    iget-object v0, p0, Lo/ᓴ$ˋ;->ﾓ:Lo/ᓴ;

    invoke-static {v0}, Lo/ᓴ;->ʻ(Lo/ᓴ;)Lo/ᵁ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ᵁ;->ᵒ()V

    .line 755
    iget-object v0, p0, Lo/ᓴ$ˋ;->ﾓ:Lo/ᓴ;

    invoke-static {v0}, Lo/ᓴ;->ʼ(Lo/ᓴ;)Lo/ᵊ;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v2, v0

    .line 756
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᓴ$ˋ;->Ĵ:Lo/ᓴ$ˏ;

    invoke-virtual {v0}, Lo/ᓴ$ˏ;->ז()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lo/ᓴ$ˋ;->ﾓ:Lo/ᓴ;

    iget-object v1, p0, Lo/ᓴ$ˋ;->Ĵ:Lo/ᓴ$ˏ;

    invoke-static {v0, v1}, Lo/ᓴ;->ˊ(Lo/ᓴ;Lo/ᓴ$ˏ;)Lo/ᓴ$ˏ;

    .line 759
    :cond_0
    iget-object v0, p0, Lo/ᓴ$ˋ;->ﾓ:Lo/ᓴ;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ᓴ;->ˊ(Lo/ᓴ;Lo/ᓴ$ˋ;)Lo/ᓴ$ˋ;

    .line 760
    return-void
.end method
