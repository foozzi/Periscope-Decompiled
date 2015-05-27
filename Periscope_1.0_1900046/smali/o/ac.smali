.class public Lo/ac;
.super Ljava/lang/Object;

# interfaces
.implements Lo/bc;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Lo/ᒴ;Lcom/google/android/gms/location/LocationSettingsRequest;)Lo/ᒵ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u14b4;Lcom/google/android/gms/location/LocationSettingsRequest;)Lo/\u14b5<Lcom/google/android/gms/location/LocationSettingsResult;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lo/ac;->ˊ(Lo/ᒴ;Lcom/google/android/gms/location/LocationSettingsRequest;Ljava/lang/String;)Lo/ᒵ;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Lo/ᒴ;Lcom/google/android/gms/location/LocationSettingsRequest;Ljava/lang/String;)Lo/ᒵ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u14b4;Lcom/google/android/gms/location/LocationSettingsRequest;Ljava/lang/String;)Lo/\u14b5<Lcom/google/android/gms/location/LocationSettingsResult;>;"
        }
    .end annotation

    new-instance v0, Lo/ad;

    invoke-direct {v0, p0, p1, p2, p3}, Lo/ad;-><init>(Lo/ac;Lo/ᒴ;Lcom/google/android/gms/location/LocationSettingsRequest;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lo/ᒴ;->ˊ(Lo/ᖧ$if;)Lo/ᖧ$if;

    move-result-object v0

    return-object v0
.end method
