.class public Lo/aq;
.super Lo/ヾ;

# interfaces
.implements Lo/ah;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aq$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/\u30fe<Lo/ao;>;Lo/ah;"
    }
.end annotation


# instance fields
.field private final DM:Lo/ai;

.field private DN:Ljava/lang/Integer;

.field private final DY:Lo/ぃ;

.field private final GW:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lo/ぃ;Lo/ai;Lo/ᒴ$ˊ;Lo/ᒴ$ˋ;Ljava/util/concurrent/ExecutorService;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v5, p6

    move-object v6, p3

    const/16 v3, 0x2c

    invoke-direct/range {v0 .. v6}, Lo/ヾ;-><init>(Landroid/content/Context;Landroid/os/Looper;ILo/ᒴ$ˊ;Lo/ᒴ$ˋ;Lo/ぃ;)V

    iput-object p3, p0, Lo/aq;->DY:Lo/ぃ;

    iput-object p4, p0, Lo/aq;->DM:Lo/ai;

    invoke-virtual {p3}, Lo/ぃ;->ᘅ()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/aq;->DN:Ljava/lang/Integer;

    iput-object p7, p0, Lo/aq;->GW:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static ˊ(Lo/ai;Ljava/lang/Integer;Ljava/util/concurrent/ExecutorService;)Landroid/os/Bundle;
    .locals 4

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "com.google.android.gms.signin.internal.offlineAccessRequested"

    invoke-virtual {p0}, Lo/ai;->Ĵ()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "com.google.android.gms.signin.internal.idTokenRequested"

    invoke-virtual {p0}, Lo/ai;->Ł()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "com.google.android.gms.signin.internal.serverClientId"

    invoke-virtual {p0}, Lo/ai;->ō()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/ai;->ţ()Lo/ᒴ$ˎ;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lo/aq$if;

    invoke-direct {v0, p0, p2}, Lo/aq$if;-><init>(Lo/ai;Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {v0}, Lo/aq$if;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const-string v0, "com.google.android.gms.signin.internal.signInCallbacks"

    new-instance v1, Lcom/google/android/gms/common/internal/BinderWrapper;

    invoke-direct {v1, v3}, Lcom/google/android/gms/common/internal/BinderWrapper;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "com.google.android.gms.common.internal.ClientSettings.sessionId"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    return-object v2
.end method


# virtual methods
.method protected ˉ(Landroid/os/IBinder;)Lo/ao;
    .locals 1

    invoke-static {p1}, Lo/ao$if;->ˈ(Landroid/os/IBinder;)Lo/ao;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Lo/בֿ;Ljava/util/Set;Lo/an;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufb4c;Ljava/util/Set<Lcom/google/android/gms/common/api/Scope;>;Lo/an;)V"
        }
    .end annotation

    const-string v0, "Expecting a valid ISignInCallbacks"

    invoke-static {p3, v0}, Lo/ﺧ;->ʼ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0}, Lo/aq;->ᴝ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lo/ao;

    new-instance v1, Lcom/google/android/gms/common/internal/zzc;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/common/internal/zzc;-><init>(Lo/בֿ;Ljava/util/Set;)V

    invoke-interface {v0, v1, p3}, Lo/ao;->ˊ(Lcom/google/android/gms/common/internal/zzc;Lo/an;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v0, "SignInClientImpl"

    const-string v1, "Remote service probably died when authAccount is called"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    new-instance v1, Lcom/google/android/gms/internal/zzut;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzut;-><init>()V

    invoke-interface {p3, v0, v1}, Lo/an;->ˊ(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/internal/zzut;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    const-string v0, "SignInClientImpl"

    const-string v1, "ISignInCallbacks#onAuthAccount should be executed from the same process, unexpected RemoteException."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public ˊ(Lo/בֿ;Z)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lo/aq;->ᴝ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lo/ao;

    iget-object v1, p0, Lo/aq;->DN:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Lo/ao;->ˊ(Lo/בֿ;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v0, "SignInClientImpl"

    const-string v1, "Remote service probably died when saveDefaultAccount is called"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public ˊ(Lo/ﺕ;)V
    .locals 5

    const-string v0, "Expecting a valid IResolveAccountCallbacks"

    invoke-static {p1, v0}, Lo/ﺧ;->ʼ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lo/aq;->DY:Lo/ぃ;

    invoke-virtual {v0}, Lo/ぃ;->ᖬ()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual {p0}, Lo/aq;->ᴝ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lo/ao;

    new-instance v1, Lcom/google/android/gms/common/internal/zzy;

    iget-object v2, p0, Lo/aq;->DN:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/common/internal/zzy;-><init>(Landroid/accounts/Account;I)V

    invoke-interface {v0, v1, p1}, Lo/ao;->ˊ(Lcom/google/android/gms/common/internal/zzy;Lo/ﺕ;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v0, "SignInClientImpl"

    const-string v1, "Remote service probably died when resolveAccount is called"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    new-instance v0, Lcom/google/android/gms/common/internal/zzaa;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;-><init>(I)V

    invoke-interface {p1, v0}, Lo/ﺕ;->ˋ(Lcom/google/android/gms/common/internal/zzaa;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    const-string v0, "SignInClientImpl"

    const-string v1, "IResolveAccountCallbacks#onAccountResolutionComplete should be executed from the same process, unexpected RemoteException."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected synthetic ˋ(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lo/aq;->ˉ(Landroid/os/IBinder;)Lo/ao;

    move-result-object v0

    return-object v0
.end method

.method protected ᘣ()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.service.START"

    return-object v0
.end method

.method protected ᘦ()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    return-object v0
.end method

.method protected ᴉ()Landroid/os/Bundle;
    .locals 5

    iget-object v0, p0, Lo/aq;->DM:Lo/ai;

    iget-object v1, p0, Lo/aq;->DY:Lo/ぃ;

    invoke-virtual {v1}, Lo/ぃ;->ᘅ()Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lo/aq;->GW:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1, v2}, Lo/aq;->ˊ(Lo/ai;Ljava/lang/Integer;Ljava/util/concurrent/ExecutorService;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v0, p0, Lo/aq;->DY:Lo/ぃ;

    invoke-virtual {v0}, Lo/ぃ;->ᖾ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lo/aq;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.google.android.gms.signin.internal.realClientPackageName"

    iget-object v1, p0, Lo/aq;->DY:Lo/ぃ;

    invoke-virtual {v1}, Lo/ぃ;->ᖾ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v3
.end method

.method public ﾓ()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lo/aq;->ᴝ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lo/ao;

    iget-object v1, p0, Lo/aq;->DN:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lo/ao;->ﭕ(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v0, "SignInClientImpl"

    const-string v1, "Remote service probably died when clearAccountFromSessionStore is called"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
