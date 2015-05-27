.class public Ltv/periscope/android/push/PushClient;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/periscope/android/push/PushClient$ˎ;,
        Ltv/periscope/android/push/PushClient$ˋ;,
        Ltv/periscope/android/push/PushClient$ˊ;,
        Ltv/periscope/android/push/PushClient$if;,
        Ltv/periscope/android/push/PushClient$PushService;
    }
.end annotation


# instance fields
.field private final bpQ:Lretrofit/RestAdapter;

.field private bxJ:Ltv/periscope/android/push/PushClient$PushService;


# direct methods
.method public constructor <init>(Lretrofit/RestAdapter;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Ltv/periscope/android/push/PushClient;->bpQ:Lretrofit/RestAdapter;

    .line 19
    return-void
.end method

.method private wM()Ltv/periscope/android/push/PushClient$PushService;
    .locals 2

    .line 60
    iget-object v0, p0, Ltv/periscope/android/push/PushClient;->bxJ:Ltv/periscope/android/push/PushClient$PushService;

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Ltv/periscope/android/push/PushClient;->bpQ:Lretrofit/RestAdapter;

    const-class v1, Ltv/periscope/android/push/PushClient$PushService;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/push/PushClient$PushService;

    iput-object v0, p0, Ltv/periscope/android/push/PushClient;->bxJ:Ltv/periscope/android/push/PushClient$PushService;

    .line 63
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/push/PushClient;->bxJ:Ltv/periscope/android/push/PushClient$PushService;

    return-object v0
.end method


# virtual methods
.method public ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltv/periscope/android/push/PushClient$ˊ;
    .locals 2

    .line 34
    new-instance v1, Ltv/periscope/android/push/PushClient$if;

    invoke-direct {v1, p0}, Ltv/periscope/android/push/PushClient$if;-><init>(Ltv/periscope/android/push/PushClient;)V

    .line 35
    iput-object p1, v1, Ltv/periscope/android/push/PushClient$if;->bpu:Ljava/lang/String;

    .line 36
    iput-object p2, v1, Ltv/periscope/android/push/PushClient$if;->bxK:Ljava/lang/String;

    .line 37
    iput-object p3, v1, Ltv/periscope/android/push/PushClient$if;->boC:Ljava/lang/String;

    .line 38
    iput-object p4, v1, Ltv/periscope/android/push/PushClient$if;->Qn:Ljava/lang/String;

    .line 39
    iput-object p5, v1, Ltv/periscope/android/push/PushClient$if;->bqc:Ljava/lang/String;

    .line 40
    iput-object p6, v1, Ltv/periscope/android/push/PushClient$if;->bxM:Ljava/lang/String;

    .line 41
    iput-object p7, v1, Ltv/periscope/android/push/PushClient$if;->bxN:Ljava/lang/String;

    .line 42
    iput-object p8, v1, Ltv/periscope/android/push/PushClient$if;->bxO:Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Ltv/periscope/android/push/PushClient;->wM()Ltv/periscope/android/push/PushClient$PushService;

    move-result-object v0

    invoke-interface {v0, v1}, Ltv/periscope/android/push/PushClient$PushService;->registerToken(Ltv/periscope/android/push/PushClient$if;)Ltv/periscope/android/push/PushClient$ˊ;

    move-result-object v0

    return-object v0
.end method

.method public ᵣ(Ljava/lang/String;Ljava/lang/String;)Ltv/periscope/android/push/PushClient$ˎ;
    .locals 2

    .line 53
    new-instance v1, Ltv/periscope/android/push/PushClient$ˋ;

    invoke-direct {v1, p0}, Ltv/periscope/android/push/PushClient$ˋ;-><init>(Ltv/periscope/android/push/PushClient;)V

    .line 54
    iput-object p1, v1, Ltv/periscope/android/push/PushClient$ˋ;->bpu:Ljava/lang/String;

    .line 55
    iput-object p2, v1, Ltv/periscope/android/push/PushClient$ˋ;->bqc:Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Ltv/periscope/android/push/PushClient;->wM()Ltv/periscope/android/push/PushClient$PushService;

    move-result-object v0

    invoke-interface {v0, v1}, Ltv/periscope/android/push/PushClient$PushService;->logout(Ltv/periscope/android/push/PushClient$ˋ;)Ltv/periscope/android/push/PushClient$ˎ;

    move-result-object v0

    return-object v0
.end method
