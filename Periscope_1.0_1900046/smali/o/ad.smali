.class Lo/ad;
.super Lo/az$if;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/az$if<Lcom/google/android/gms/location/LocationSettingsResult;>;"
    }
.end annotation


# instance fields
.field final synthetic GE:Lcom/google/android/gms/location/LocationSettingsRequest;

.field final synthetic GF:Ljava/lang/String;

.field final synthetic GG:Lo/ac;


# direct methods
.method constructor <init>(Lo/ac;Lo/ᒴ;Lcom/google/android/gms/location/LocationSettingsRequest;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/ad;->GG:Lo/ac;

    iput-object p3, p0, Lo/ad;->GE:Lcom/google/android/gms/location/LocationSettingsRequest;

    iput-object p4, p0, Lo/ad;->GF:Ljava/lang/String;

    invoke-direct {p0, p2}, Lo/az$if;-><init>(Lo/ᒴ;)V

    return-void
.end method


# virtual methods
.method public synthetic ˊ(Lcom/google/android/gms/common/api/Status;)Lo/ᒹ;
    .locals 1

    invoke-virtual {p0, p1}, Lo/ad;->ᐝ(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/location/LocationSettingsResult;

    move-result-object v0

    return-object v0
.end method

.method protected ˊ(Lo/x;)V
    .locals 2

    iget-object v0, p0, Lo/ad;->GE:Lcom/google/android/gms/location/LocationSettingsRequest;

    iget-object v1, p0, Lo/ad;->GF:Ljava/lang/String;

    invoke-virtual {p1, v0, p0, v1}, Lo/x;->ˊ(Lcom/google/android/gms/location/LocationSettingsRequest;Lo/ᖧ$ˊ;Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic ˋ(Lo/ᒰ$ˊ;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lo/x;

    invoke-virtual {p0, v0}, Lo/ad;->ˊ(Lo/x;)V

    return-void
.end method

.method public ᐝ(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/location/LocationSettingsResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/LocationSettingsResult;

    invoke-direct {v0, p1}, Lcom/google/android/gms/location/LocationSettingsResult;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
