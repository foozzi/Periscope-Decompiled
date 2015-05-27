.class public Lcom/google/android/gms/location/LocationSettingsResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lo/ᒹ;


# static fields
.field public static final CREATOR:Lo/bb;


# instance fields
.field private final BH:I

.field private final Hy:Lcom/google/android/gms/common/api/Status;

.field private final Hz:Lcom/google/android/gms/location/LocationSettingsStates;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/bb;

    invoke-direct {v0}, Lo/bb;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationSettingsResult;->CREATOR:Lo/bb;

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/common/api/Status;Lcom/google/android/gms/location/LocationSettingsStates;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/LocationSettingsResult;->BH:I

    iput-object p2, p0, Lcom/google/android/gms/location/LocationSettingsResult;->Hy:Lcom/google/android/gms/common/api/Status;

    iput-object p3, p0, Lcom/google/android/gms/location/LocationSettingsResult;->Hz:Lcom/google/android/gms/location/LocationSettingsStates;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/location/LocationSettingsResult;-><init>(ILcom/google/android/gms/common/api/Status;Lcom/google/android/gms/location/LocationSettingsStates;)V

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

    invoke-static {p0, p1, p2}, Lo/bb;->ˊ(Lcom/google/android/gms/location/LocationSettingsResult;Landroid/os/Parcel;I)V

    return-void
.end method

.method public ϙ()Lcom/google/android/gms/location/LocationSettingsStates;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/LocationSettingsResult;->Hz:Lcom/google/android/gms/location/LocationSettingsStates;

    return-object v0
.end method

.method public হ()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/LocationSettingsResult;->Hy:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public ถ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/LocationSettingsResult;->BH:I

    return v0
.end method
