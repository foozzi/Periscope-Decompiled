.class public Lo/abq;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private bvw:Z

.field private bwK:Lo/abj;

.field private bwL:Lo/abi;

.field private bwM:Lo/abi;

.field private bwN:Lo/abg;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lo/abj;

    invoke-direct {v0}, Lo/abj;-><init>()V

    iput-object v0, p0, Lo/abq;->bwK:Lo/abj;

    .line 17
    new-instance v0, Lo/abi;

    const v1, 0x7f050004

    const v2, 0x7f050002

    invoke-direct {v0, p1, v1, v2}, Lo/abi;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lo/abq;->bwM:Lo/abi;

    .line 18
    new-instance v0, Lo/abi;

    const v1, 0x7f050004

    const v2, 0x7f050003

    invoke-direct {v0, p1, v1, v2}, Lo/abi;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lo/abq;->bwL:Lo/abi;

    .line 19
    new-instance v0, Lo/abg;

    invoke-direct {v0}, Lo/abg;-><init>()V

    iput-object v0, p0, Lo/abq;->bwN:Lo/abg;

    .line 20
    return-void
.end method


# virtual methods
.method public vQ()V
    .locals 1

    .line 27
    iget-object v0, p0, Lo/abq;->bwN:Lo/abg;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lo/abq;->bwN:Lo/abg;

    invoke-virtual {v0}, Lo/abg;->vQ()V

    .line 30
    :cond_0
    iget-object v0, p0, Lo/abq;->bwK:Lo/abj;

    invoke-virtual {v0}, Lo/abj;->vQ()V

    .line 31
    iget-object v0, p0, Lo/abq;->bwM:Lo/abi;

    invoke-virtual {v0}, Lo/abi;->vQ()V

    .line 32
    iget-object v0, p0, Lo/abq;->bwL:Lo/abi;

    invoke-virtual {v0}, Lo/abi;->vQ()V

    .line 33
    return-void
.end method

.method public ˊ(Lo/abn;)V
    .locals 7

    .line 36
    invoke-virtual {p1}, Lo/abn;->ww()Ltv/periscope/android/util/Size;

    move-result-object v4

    .line 37
    if-nez v4, :cond_0

    .line 38
    return-void

    .line 41
    :cond_0
    invoke-virtual {p1}, Lo/abn;->wt()I

    move-result v5

    .line 42
    invoke-static {}, Lo/abp;->wy()Ltv/periscope/android/util/Size;

    move-result-object v6

    .line 44
    iget-object v0, p0, Lo/abq;->bwN:Lo/abg;

    iget-boolean v1, p0, Lo/abq;->bvw:Z

    invoke-virtual {v0, v4, v6, v5, v1}, Lo/abg;->ˊ(Ltv/periscope/android/util/Size;Ltv/periscope/android/util/Size;IZ)V

    .line 45
    iget-object v0, p0, Lo/abq;->bwN:Lo/abg;

    iget-object v1, p0, Lo/abq;->bwM:Lo/abi;

    iget-object v2, p0, Lo/abq;->bwL:Lo/abi;

    iget-object v3, p0, Lo/abq;->bwK:Lo/abj;

    invoke-virtual {v0, v1, v2, v3, p1}, Lo/abg;->ˊ(Lo/abi;Lo/abi;Lo/abj;Lo/abo;)Lo/abk;

    .line 46
    return-void
.end method

.method public ᑦ(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lo/abq;->bvw:Z

    .line 24
    return-void
.end method
