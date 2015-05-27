.class interface abstract Ltv/periscope/android/push/PushClient$PushService;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/periscope/android/push/PushClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "PushService"
.end annotation


# virtual methods
.method public abstract logout(Ltv/periscope/android/push/PushClient$ˋ;)Ltv/periscope/android/push/PushClient$ˎ;
    .param p1    # Ltv/periscope/android/push/PushClient$ˋ;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/logout"
    .end annotation
.end method

.method public abstract registerToken(Ltv/periscope/android/push/PushClient$if;)Ltv/periscope/android/push/PushClient$ˊ;
    .param p1    # Ltv/periscope/android/push/PushClient$if;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/registerToken"
    .end annotation
.end method
