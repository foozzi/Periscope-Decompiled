.class Lo/ᓗ;
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
.field final synthetic op:Lo/ऽ;

.field final synthetic os:Ljava/util/Date;

.field final synthetic ot:Ljava/lang/Thread;

.field final synthetic ou:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lo/ऽ;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lo/ᓗ;->op:Lo/ऽ;

    iput-object p2, p0, Lo/ᓗ;->os:Ljava/util/Date;

    iput-object p3, p0, Lo/ᓗ;->ot:Ljava/lang/Thread;

    iput-object p4, p0, Lo/ᓗ;->ou:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 367
    iget-object v0, p0, Lo/ᓗ;->op:Lo/ऽ;

    invoke-static {v0}, Lo/ऽ;->ˊ(Lo/ऽ;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Lo/ᓗ;->op:Lo/ऽ;

    iget-object v1, p0, Lo/ᓗ;->os:Ljava/util/Date;

    iget-object v2, p0, Lo/ᓗ;->ot:Ljava/lang/Thread;

    iget-object v3, p0, Lo/ᓗ;->ou:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, v3}, Lo/ऽ;->ˋ(Lo/ऽ;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 370
    :cond_0
    return-void
.end method
