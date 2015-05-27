.class public Lcom/google/android/gms/location/LocationSettingsStates;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<Lcom/google/android/gms/location/LocationSettingsStates;>;"
        }
    .end annotation
.end field


# instance fields
.field private final BH:I

.field private final HA:Z

.field private final HB:Z

.field private final HC:Z

.field private final HD:Z

.field private final HE:Z

.field private final HF:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/bk;

    invoke-direct {v0}, Lo/bk;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationSettingsStates;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZZZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/LocationSettingsStates;->BH:I

    iput-boolean p2, p0, Lcom/google/android/gms/location/LocationSettingsStates;->HA:Z

    iput-boolean p3, p0, Lcom/google/android/gms/location/LocationSettingsStates;->HB:Z

    iput-boolean p4, p0, Lcom/google/android/gms/location/LocationSettingsStates;->HC:Z

    iput-boolean p5, p0, Lcom/google/android/gms/location/LocationSettingsStates;->HD:Z

    iput-boolean p6, p0, Lcom/google/android/gms/location/LocationSettingsStates;->HE:Z

    iput-boolean p7, p0, Lcom/google/android/gms/location/LocationSettingsStates;->HF:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lo/bk;->ˊ(Lcom/google/android/gms/location/LocationSettingsStates;Landroid/os/Parcel;I)V

    return-void
.end method

.method public ϝ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->HA:Z

    return v0
.end method

.method public Ϯ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->HD:Z

    return v0
.end method

.method public ϯ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->HB:Z

    return v0
.end method

.method public ϵ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->HE:Z

    return v0
.end method

.method public Ϲ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->HC:Z

    return v0
.end method

.method public С()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->HF:Z

    return v0
.end method

.method public ถ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->BH:I

    return v0
.end method
