.class public final Lcom/google/android/gms/maps/model/CircleOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lo/ea;


# instance fields
.field private final BH:I

.field private IN:Lcom/google/android/gms/maps/model/LatLng;

.field private IO:D

.field private IP:F

.field private IQ:I

.field private IR:I

.field private IS:F

.field private IT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/ea;

    invoke-direct {v0}, Lo/ea;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/CircleOptions;->CREATOR:Lo/ea;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->IN:Lcom/google/android/gms/maps/model/LatLng;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->IO:D

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->IP:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->IQ:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->IR:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->IS:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->IT:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->BH:I

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/maps/model/LatLng;DFIIFZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->IN:Lcom/google/android/gms/maps/model/LatLng;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->IO:D

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->IP:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->IQ:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->IR:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->IS:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->IT:Z

    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->BH:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->IN:Lcom/google/android/gms/maps/model/LatLng;

    iput-wide p3, p0, Lcom/google/android/gms/maps/model/CircleOptions;->IO:D

    iput p5, p0, Lcom/google/android/gms/maps/model/CircleOptions;->IP:F

    iput p6, p0, Lcom/google/android/gms/maps/model/CircleOptions;->IQ:I

    iput p7, p0, Lcom/google/android/gms/maps/model/CircleOptions;->IR:I

    iput p8, p0, Lcom/google/android/gms/maps/model/CircleOptions;->IS:F

    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/CircleOptions;->IT:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->IP:F

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->IT:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-static {}, Lo/ch;->ᗀ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lo/eb;->ˊ(Lcom/google/android/gms/maps/model/CircleOptions;Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2}, Lo/ea;->ˊ(Lcom/google/android/gms/maps/model/CircleOptions;Landroid/os/Parcel;I)V

    :goto_0
    return-void
.end method

.method public ถ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->BH:I

    return v0
.end method

.method public K()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->IN:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public Ⅽ()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->IO:D

    return-wide v0
.end method

.method public Ↄ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->IQ:I

    return v0
.end method

.method public く()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->IR:I

    return v0
.end method

.method public っ()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->IS:F

    return v0
.end method
