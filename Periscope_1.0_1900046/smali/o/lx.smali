.class public Lo/lx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/fv;
.implements Lo/ge;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/ge<Lo/lw;>;Lo/fv<Lo/lw;>;"
    }
.end annotation


# static fields
.field static final PS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<+Lo/lw;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final gson:Lo/fl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/lx;->PS:Ljava/util/Map;

    .line 31
    sget-object v0, Lo/lx;->PS:Ljava/util/Map;

    const-string v1, "oauth1a"

    const-class v2, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lo/lx;->PS:Ljava/util/Map;

    const-string v1, "oauth2"

    const-class v2, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Token;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lo/lx;->PS:Ljava/util/Map;

    const-string v1, "guest"

    const-class v2, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lo/fl;

    invoke-direct {v0}, Lo/fl;-><init>()V

    iput-object v0, p0, Lo/lx;->gson:Lo/fl;

    .line 40
    return-void
.end method

.method static ˉ(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/Class<+Lo/lw;>;)Ljava/lang/String;"
        }
    .end annotation

    .line 61
    sget-object v0, Lo/lx;->PS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    .line 62
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 65
    :cond_0
    goto :goto_0

    .line 66
    :cond_1
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public bridge synthetic ˊ(Ljava/lang/Object;Ljava/lang/reflect/Type;Lo/gd;)Lo/fw;
    .locals 1

    .line 23
    move-object v0, p1

    check-cast v0, Lo/lw;

    invoke-virtual {p0, v0, p2, p3}, Lo/lx;->ˊ(Lo/lw;Ljava/lang/reflect/Type;Lo/gd;)Lo/fw;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Lo/lw;Ljava/lang/reflect/Type;Lo/gd;)Lo/fw;
    .locals 3

    .line 44
    new-instance v2, Lo/fz;

    invoke-direct {v2}, Lo/fz;-><init>()V

    .line 45
    const-string v0, "auth_type"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lo/lx;->ˉ(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lo/fz;->ʿ(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v0, "auth_token"

    iget-object v1, p0, Lo/lx;->gson:Lo/fl;

    invoke-virtual {v1, p1}, Lo/fl;->ᴶ(Ljava/lang/Object;)Lo/fw;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lo/fz;->ˊ(Ljava/lang/String;Lo/fw;)V

    .line 47
    return-object v2
.end method

.method public synthetic ˋ(Lo/fw;Ljava/lang/reflect/Type;Lo/fu;)Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lo/lx;->ˎ(Lo/fw;Ljava/lang/reflect/Type;Lo/fu;)Lo/lw;

    move-result-object v0

    return-object v0
.end method

.method public ˎ(Lo/fw;Ljava/lang/reflect/Type;Lo/fu;)Lo/lw;
    .locals 6

    .line 53
    invoke-virtual {p1}, Lo/fw;->r()Lo/fz;

    move-result-object v2

    .line 54
    const-string v0, "auth_type"

    invoke-virtual {v2, v0}, Lo/fz;->Ꭵ(Ljava/lang/String;)Lo/gc;

    move-result-object v3

    .line 55
    invoke-virtual {v3}, Lo/gc;->h()Ljava/lang/String;

    move-result-object v4

    .line 56
    const-string v0, "auth_token"

    invoke-virtual {v2, v0}, Lo/fz;->เ(Ljava/lang/String;)Lo/fw;

    move-result-object v5

    .line 57
    iget-object v0, p0, Lo/lx;->gson:Lo/fl;

    sget-object v1, Lo/lx;->PS:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v5, v1}, Lo/fl;->ˊ(Lo/fw;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/lw;

    return-object v0
.end method
