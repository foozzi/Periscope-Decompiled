.class Lo/ᐸ;
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

.field final synthetic or:Ljava/io/File;


# direct methods
.method constructor <init>(Lo/ऽ;Ljava/io/File;)V
    .locals 0

    .line 1185
    iput-object p1, p0, Lo/ᐸ;->op:Lo/ऽ;

    iput-object p2, p0, Lo/ᐸ;->or:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1188
    iget-object v0, p0, Lo/ᐸ;->op:Lo/ऽ;

    invoke-static {v0}, Lo/ऽ;->ˎ(Lo/ऽ;)Lo/ɬ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ɬ;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/qh;->ᴸ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1189
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Attempting to send crash report at time of crash..."

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    invoke-static {}, Lo/tr;->dN()Lo/tr;

    move-result-object v0

    invoke-virtual {v0}, Lo/tr;->dO()Lo/tu;

    move-result-object v4

    .line 1193
    iget-object v0, p0, Lo/ᐸ;->op:Lo/ऽ;

    invoke-static {v0}, Lo/ऽ;->ˎ(Lo/ऽ;)Lo/ɬ;

    move-result-object v0

    invoke-virtual {v0, v4}, Lo/ɬ;->ˊ(Lo/tu;)Lo/ᓺ;

    move-result-object v5

    .line 1198
    if-eqz v5, :cond_0

    .line 1199
    new-instance v0, Lo/ᔮ;

    invoke-direct {v0, v5}, Lo/ᔮ;-><init>(Lo/ᓺ;)V

    new-instance v1, Lo/ᴈ;

    iget-object v2, p0, Lo/ᐸ;->or:Ljava/io/File;

    invoke-static {}, Lo/ऽ;->ᒍ()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lo/ᴈ;-><init>(Ljava/io/File;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lo/ᔮ;->ˊ(Lo/ᔪ;)Z

    .line 1203
    :cond_0
    return-void
.end method
