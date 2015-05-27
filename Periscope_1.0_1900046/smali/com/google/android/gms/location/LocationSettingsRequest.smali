.class public Lcom/google/android/gms/location/LocationSettingsRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/LocationSettingsRequest$1;,
        Lcom/google/android/gms/location/LocationSettingsRequest$if;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<Lcom/google/android/gms/location/LocationSettingsRequest;>;"
        }
    .end annotation
.end field


# instance fields
.field private final BH:I

.field private final Hu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lcom/google/android/gms/location/LocationRequest;>;"
        }
    .end annotation
.end field

.field private final Hv:Z

.field private final Hw:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/bj;

    invoke-direct {v0}, Lo/bj;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationSettingsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ILjava/util/List<Lcom/google/android/gms/location/LocationRequest;>;ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->BH:I

    iput-object p2, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->Hu:Ljava/util/List;

    iput-boolean p3, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->Hv:Z

    iput-boolean p4, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->Hw:Z

    return-void
.end method

.method private constructor <init>(Ljava/util/List;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Lcom/google/android/gms/location/LocationRequest;>;ZZ)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/location/LocationSettingsRequest;-><init>(ILjava/util/List;ZZ)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;ZZLcom/google/android/gms/location/LocationSettingsRequest$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/location/LocationSettingsRequest;-><init>(Ljava/util/List;ZZ)V

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

    invoke-static {p0, p1, p2}, Lo/bj;->ˊ(Lcom/google/android/gms/location/LocationSettingsRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public ʜ()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/List<Lcom/google/android/gms/location/LocationRequest;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->Hu:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public Ύ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->Hv:Z

    return v0
.end method

.method public Κ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->Hw:Z

    return v0
.end method

.method public ถ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->BH:I

    return v0
.end method
