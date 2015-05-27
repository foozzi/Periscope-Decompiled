.class Lo/zk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic brT:J

.field final synthetic brU:Lo/zj;


# direct methods
.method constructor <init>(Lo/zj;J)V
    .locals 0

    .line 96
    iput-object p1, p0, Lo/zk;->brU:Lo/zj;

    iput-wide p2, p0, Lo/zk;->brT:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 99
    const-string v0, "BC"

    const-string v1, "Poll check..."

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 101
    iget-object v0, p0, Lo/zk;->brU:Lo/zj;

    iget-object v0, v0, Lo/zj;->brP:Lo/zw;

    invoke-virtual {v0}, Lo/zw;->vc()I

    move-result v5

    .line 102
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    .line 103
    iget-object v0, p0, Lo/zk;->brU:Lo/zj;

    iget-object v0, v0, Lo/zj;->brP:Lo/zw;

    invoke-virtual {v0, v6}, Lo/zw;->ｪ(I)Lo/xh;

    move-result-object v7

    .line 104
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lo/xh;->uh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, v7, Lo/xh;->id:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    const-string v0, "BC"

    const-string v1, "Nothing to poll!"

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 111
    :cond_2
    iget-object v0, p0, Lo/zk;->brU:Lo/zj;

    invoke-static {v0}, Lo/zj;->ˊ(Lo/zj;)Lo/vn;

    move-result-object v0

    invoke-virtual {v0, v4}, Lo/vn;->ˊ(Ljava/util/ArrayList;)Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lo/zk;->brU:Lo/zj;

    iget-object v0, v0, Lo/zj;->brP:Lo/zw;

    invoke-virtual {v0}, Lo/zw;->id()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/zk;->brU:Lo/zj;

    invoke-static {v1}, Lo/zj;->ˋ(Lo/zj;)Ljava/lang/Runnable;

    move-result-object v1

    iget-wide v2, p0, Lo/zk;->brT:J

    invoke-static {v0, v1, v2, v3}, Lo/akn;->ˊ(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 114
    :goto_1
    return-void
.end method
