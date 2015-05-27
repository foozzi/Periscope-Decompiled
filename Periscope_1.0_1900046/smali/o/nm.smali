.class public Lo/nm;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final As:Ljava/lang/String;

.field private final PT:Lo/mg;

.field private final PU:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

.field private final Rg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field private final method:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lo/mg;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lo/mg;Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lo/nm;->method:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lo/nm;->url:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lo/nm;->PU:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 28
    iput-object p4, p0, Lo/nm;->PT:Lo/mg;

    .line 29
    iput-object p5, p0, Lo/nm;->As:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lo/nm;->Rg:Ljava/util/Map;

    .line 31
    return-void
.end method


# virtual methods
.method protected bF()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
        }
    .end annotation

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bG()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lo/nm;->PT:Lo/mg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/nm;->PT:Lo/mg;

    invoke-virtual {v0}, Lo/mg;->aX()Lo/lw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lo/nm;->PT:Lo/mg;

    invoke-virtual {v0}, Lo/mg;->aX()Lo/lw;

    move-result-object v0

    iget-object v1, p0, Lo/nm;->PU:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    invoke-virtual {p0}, Lo/nm;->getMethod()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lo/nm;->url:Ljava/lang/String;

    invoke-virtual {p0}, Lo/nm;->bH()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/lw;->ˊ(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 60
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected bH()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lo/nm;->Rg:Ljava/util/Map;

    return-object v0
.end method

.method public final getHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
        }
    .end annotation

    .line 34
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 35
    invoke-virtual {p0}, Lo/nm;->bF()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 36
    iget-object v0, p0, Lo/nm;->As:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    const-string v0, "User-Agent"

    iget-object v1, p0, Lo/nm;->As:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_0
    invoke-virtual {p0}, Lo/nm;->bG()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 40
    return-object v2
.end method

.method protected getMethod()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lo/nm;->method:Ljava/lang/String;

    return-object v0
.end method
