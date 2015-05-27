.class Lo/mr$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ta;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/mr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/ta<Lo/mr;>;"
    }
.end annotation


# instance fields
.field private final gson:Lo/fl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lo/fl;

    invoke-direct {v0}, Lo/fl;-><init>()V

    iput-object v0, p0, Lo/mr$if;->gson:Lo/fl;

    .line 76
    return-void
.end method


# virtual methods
.method public synthetic ǃ(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 70
    move-object v0, p1

    check-cast v0, Lo/mr;

    invoke-virtual {p0, v0}, Lo/mr$if;->ˊ(Lo/mr;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Lo/mr;)Ljava/lang/String;
    .locals 4

    .line 80
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/mr;->aX()Lo/lw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    :try_start_0
    iget-object v0, p0, Lo/mr$if;->gson:Lo/fl;

    invoke-virtual {v0, p1}, Lo/fl;->ᴸ(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 83
    :catch_0
    move-exception v3

    .line 84
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Twitter"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public synthetic ᕁ(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 70
    invoke-virtual {p0, p1}, Lo/mr$if;->ᵄ(Ljava/lang/String;)Lo/mr;

    move-result-object v0

    return-object v0
.end method

.method public ᵄ(Ljava/lang/String;)Lo/mr;
    .locals 4

    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    :try_start_0
    iget-object v0, p0, Lo/mr$if;->gson:Lo/fl;

    const-class v1, Lo/mr;

    invoke-virtual {v0, p1, v1}, Lo/fl;->ˊ(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/mr;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 95
    :catch_0
    move-exception v3

    .line 96
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Twitter"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
