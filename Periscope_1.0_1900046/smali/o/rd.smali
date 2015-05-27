.class Lo/rd;
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
.field final synthetic WW:Lo/qz$ˋ;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lo/qz$ˋ;Ljava/lang/Runnable;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lo/rd;->WW:Lo/qz$ˋ;

    iput-object p2, p0, Lo/rd;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 237
    :try_start_0
    iget-object v0, p0, Lo/rd;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    iget-object v0, p0, Lo/rd;->WW:Lo/qz$ˋ;

    invoke-virtual {v0}, Lo/qz$ˋ;->cP()V

    .line 240
    goto :goto_0

    .line 239
    :catchall_0
    move-exception v1

    iget-object v0, p0, Lo/rd;->WW:Lo/qz$ˋ;

    invoke-virtual {v0}, Lo/qz$ˋ;->cP()V

    throw v1

    .line 241
    :goto_0
    return-void
.end method
