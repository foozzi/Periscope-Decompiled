.class Lo/ย;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Ljava/util/concurrent/Callable<Ljava/lang/Void;>;"
    }
.end annotation


# instance fields
.field final synthetic op:Lo/ऽ;


# direct methods
.method constructor <init>(Lo/ऽ;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lo/ย;->op:Lo/ऽ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .line 456
    invoke-virtual {p0}, Lo/ย;->ᴻ()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public ᴻ()Ljava/lang/Void;
    .locals 1

    .line 459
    iget-object v0, p0, Lo/ย;->op:Lo/ऽ;

    invoke-virtual {v0}, Lo/ऽ;->ڈ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    iget-object v0, p0, Lo/ย;->op:Lo/ऽ;

    invoke-static {v0}, Lo/ऽ;->ˋ(Lo/ऽ;)V

    .line 462
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
