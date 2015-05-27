.class Lo/yr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/abh$ˋ;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bqK:Lo/abl;

.field final synthetic bqL:Lo/yq;


# direct methods
.method constructor <init>(Lo/yq;Lo/abl;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lo/yr;->bqL:Lo/yq;

    iput-object p2, p0, Lo/yr;->bqK:Lo/abl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uB()V
    .locals 3

    .line 120
    iget-object v0, p0, Lo/yr;->bqL:Lo/yq;

    new-instance v1, Lo/abq;

    iget-object v2, p0, Lo/yr;->bqK:Lo/abl;

    invoke-virtual {v2}, Lo/abl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/abq;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lo/yq;->ˊ(Lo/yq;Lo/abq;)Lo/abq;

    .line 121
    iget-object v0, p0, Lo/yr;->bqL:Lo/yq;

    new-instance v1, Lo/abq;

    iget-object v2, p0, Lo/yr;->bqK:Lo/abl;

    invoke-virtual {v2}, Lo/abl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/abq;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lo/yq;->ˋ(Lo/yq;Lo/abq;)Lo/abq;

    .line 122
    iget-object v0, p0, Lo/yr;->bqL:Lo/yq;

    new-instance v1, Lo/abn;

    invoke-direct {v1}, Lo/abn;-><init>()V

    invoke-static {v0, v1}, Lo/yq;->ˊ(Lo/yq;Lo/abn;)Lo/abn;

    .line 123
    return-void
.end method
