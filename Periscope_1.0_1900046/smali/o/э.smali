.class Lo/э;
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
        "Ljava/lang/Object;Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    }
.end annotation


# instance fields
.field final synthetic nN:Lo/ɬ;


# direct methods
.method constructor <init>(Lo/ɬ;)V
    .locals 0

    .line 880
    iput-object p1, p0, Lo/э;->nN:Lo/ɬ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 1

    .line 883
    iget-object v0, p0, Lo/э;->nN:Lo/ɬ;

    invoke-static {v0}, Lo/ɬ;->ˊ(Lo/ɬ;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 880
    invoke-virtual {p0}, Lo/э;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
