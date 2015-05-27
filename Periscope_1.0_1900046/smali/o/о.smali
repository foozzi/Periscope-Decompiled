.class Lo/о;
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
.field final synthetic nN:Lo/ɬ;


# direct methods
.method constructor <init>(Lo/ɬ;)V
    .locals 0

    .line 846
    iput-object p1, p0, Lo/о;->nN:Lo/ɬ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .line 846
    invoke-virtual {p0}, Lo/о;->ᴻ()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public ᴻ()Ljava/lang/Void;
    .locals 3

    .line 851
    iget-object v0, p0, Lo/о;->nN:Lo/ɬ;

    invoke-static {v0}, Lo/ɬ;->ˊ(Lo/ɬ;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 852
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Initialization marker file created."

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    const/4 v0, 0x0

    return-object v0
.end method
