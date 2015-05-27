.class Lo/lv$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ta;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/lv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/ta<Lo/lv;>;"
    }
.end annotation


# instance fields
.field private final gson:Lo/fl;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lo/fr;

    invoke-direct {v0}, Lo/fr;-><init>()V

    const-class v1, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;

    new-instance v2, Lo/lx;

    invoke-direct {v2}, Lo/lx;-><init>()V

    invoke-virtual {v0, v1, v2}, Lo/fr;->ˊ(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lo/fr;

    move-result-object v0

    invoke-virtual {v0}, Lo/fr;->f()Lo/fl;

    move-result-object v0

    iput-object v0, p0, Lo/lv$if;->gson:Lo/fl;

    .line 31
    return-void
.end method


# virtual methods
.method public synthetic ǃ(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 23
    move-object v0, p1

    check-cast v0, Lo/lv;

    invoke-virtual {p0, v0}, Lo/lv$if;->ˊ(Lo/lv;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Lo/lv;)Ljava/lang/String;
    .locals 5

    .line 35
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/lv;->aX()Lo/lw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    :try_start_0
    iget-object v0, p0, Lo/lv$if;->gson:Lo/fl;

    invoke-virtual {v0, p1}, Lo/fl;->ᴸ(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 38
    :catch_0
    move-exception v4

    .line 39
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Twitter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to serialize session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public ᔋ(Ljava/lang/String;)Lo/lv;
    .locals 5

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    :try_start_0
    iget-object v0, p0, Lo/lv$if;->gson:Lo/fl;

    const-class v1, Lo/lv;

    invoke-virtual {v0, p1, v1}, Lo/fl;->ˊ(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/lv;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 51
    :catch_0
    move-exception v4

    .line 52
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Twitter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to deserialize session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic ᕁ(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0, p1}, Lo/lv$if;->ᔋ(Ljava/lang/String;)Lo/lv;

    move-result-object v0

    return-object v0
.end method
