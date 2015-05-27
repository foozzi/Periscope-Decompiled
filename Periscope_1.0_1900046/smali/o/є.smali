.class Lo/є;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/tr$ˊ;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/tr$\u02ca<Ljava/lang/Boolean;>;"
    }
.end annotation


# instance fields
.field final synthetic nN:Lo/ɬ;


# direct methods
.method constructor <init>(Lo/ɬ;)V
    .locals 0

    .line 931
    iput-object p1, p0, Lo/є;->nN:Lo/ɬ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˋ(Lo/tu;)Ljava/lang/Boolean;
    .locals 1

    .line 934
    iget-object v0, p1, Lo/tu;->Zs:Lo/tn;

    iget-boolean v0, v0, Lo/tn;->YR:Z

    if-eqz v0, :cond_1

    .line 935
    iget-object v0, p0, Lo/є;->nN:Lo/ɬ;

    invoke-virtual {v0}, Lo/ɬ;->υ()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 937
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic ˎ(Lo/tu;)Ljava/lang/Object;
    .locals 1

    .line 931
    invoke-virtual {p0, p1}, Lo/є;->ˋ(Lo/tu;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
