.class public final Lcom/google/android/gms/maps/model/PolylineOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lo/em;


# instance fields
.field private final BH:I

.field private IS:F

.field private IT:Z

.field private IW:F

.field private final Jp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
        }
    .end annotation
.end field

.field private Jr:Z

.field private ϊ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/em;

    invoke-direct {v0}, Lo/em;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/PolylineOptions;->CREATOR:Lo/em;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->IW:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->ϊ:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->IS:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->IT:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Jr:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->BH:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Jp:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;FIFZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->IW:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->ϊ:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->IS:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->IT:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Jr:Z

    iput p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->BH:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Jp:Ljava/util/List;

    iput p3, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->IW:F

    iput p4, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->ϊ:I

    iput p5, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->IS:F

    iput-boolean p6, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->IT:Z

    iput-boolean p7, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Jr:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->ϊ:I

    return v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->IW:F

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->IT:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-static {}, Lo/ch;->ᗀ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lo/en;->ˊ(Lcom/google/android/gms/maps/model/PolylineOptions;Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2}, Lo/em;->ˊ(Lcom/google/android/gms/maps/model/PolylineOptions;Landroid/os/Parcel;I)V

    :goto_0
    return-void
.end method

.method public ถ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->BH:I

    return v0
.end method

.method public っ()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->IS:F

    return v0
.end method

.method public ﭖ()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Jp:Ljava/util/List;

    return-object v0
.end method

.method public ﭴ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->Jr:Z

    return v0
.end method
