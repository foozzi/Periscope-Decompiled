.class Lo/ᓕ;
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

.field final synthetic os:Ljava/util/Date;

.field final synthetic ot:Ljava/lang/Thread;

.field final synthetic ou:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lo/ऽ;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lo/ᓕ;->op:Lo/ऽ;

    iput-object p2, p0, Lo/ᓕ;->os:Ljava/util/Date;

    iput-object p3, p0, Lo/ᓕ;->ot:Ljava/lang/Thread;

    iput-object p4, p0, Lo/ᓕ;->ou:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .line 274
    invoke-virtual {p0}, Lo/ᓕ;->ᴻ()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public ᴻ()Ljava/lang/Void;
    .locals 4

    .line 277
    iget-object v0, p0, Lo/ᓕ;->op:Lo/ऽ;

    iget-object v1, p0, Lo/ᓕ;->os:Ljava/util/Date;

    iget-object v2, p0, Lo/ᓕ;->ot:Ljava/lang/Thread;

    iget-object v3, p0, Lo/ᓕ;->ou:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, v3}, Lo/ऽ;->ˊ(Lo/ऽ;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 278
    const/4 v0, 0x0

    return-object v0
.end method
