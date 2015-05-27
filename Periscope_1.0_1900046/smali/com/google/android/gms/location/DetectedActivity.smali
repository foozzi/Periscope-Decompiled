.class public Lcom/google/android/gms/location/DetectedActivity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lo/av;

.field public static final Hf:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<Lcom/google/android/gms/location/DetectedActivity;>;"
        }
    .end annotation
.end field


# instance fields
.field private final BH:I

.field public Hg:I

.field public Hh:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/au;

    invoke-direct {v0}, Lo/au;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/DetectedActivity;->Hf:Ljava/util/Comparator;

    new-instance v0, Lo/av;

    invoke-direct {v0}, Lo/av;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/DetectedActivity;->CREATOR:Lo/av;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/DetectedActivity;->BH:I

    iput p2, p0, Lcom/google/android/gms/location/DetectedActivity;->Hg:I

    iput p3, p0, Lcom/google/android/gms/location/DetectedActivity;->Hh:I

    return-void
.end method

.method private ﭡ(I)I
    .locals 1

    const/16 v0, 0x9

    if-le p1, v0, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/DetectedActivity;->Hg:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/DetectedActivity;->ﭡ(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DetectedActivity [type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/DetectedActivity;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", confidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/DetectedActivity;->Hh:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lo/av;->ˊ(Lcom/google/android/gms/location/DetectedActivity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public Ɔ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/DetectedActivity;->Hh:I

    return v0
.end method

.method public ถ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/DetectedActivity;->BH:I

    return v0
.end method
