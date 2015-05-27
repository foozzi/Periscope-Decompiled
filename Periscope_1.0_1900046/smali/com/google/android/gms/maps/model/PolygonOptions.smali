.class public final Lcom/google/android/gms/maps/model/PolygonOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lo/ek;


# instance fields
.field private final BH:I

.field private IP:F

.field private IQ:I

.field private IR:I

.field private IS:F

.field private IT:Z

.field private final Jp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
        }
    .end annotation
.end field

.field private final Jq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;>;"
        }
    .end annotation
.end field

.field private Jr:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/ek;

    invoke-direct {v0}, Lo/ek;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/PolygonOptions;->CREATOR:Lo/ek;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->IP:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->IQ:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->IR:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->IS:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->IT:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Jr:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->BH:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Jp:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Jq:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;Ljava/util/List;FIIFZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ILjava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;Ljava/util/List;FIIFZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->IP:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->IQ:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->IR:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->IS:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->IT:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Jr:Z

    iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->BH:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Jp:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Jq:Ljava/util/List;

    iput p4, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->IP:F

    iput p5, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->IQ:I

    iput p6, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->IR:I

    iput p7, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->IS:F

    iput-boolean p8, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->IT:Z

    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Jr:Z

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

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->IP:F

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->IT:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-static {}, Lo/ch;->ᗀ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lo/el;->ˊ(Lcom/google/android/gms/maps/model/PolygonOptions;Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2}, Lo/ek;->ˊ(Lcom/google/android/gms/maps/model/PolygonOptions;Landroid/os/Parcel;I)V

    :goto_0
    return-void
.end method

.method public ถ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->BH:I

    return v0
.end method

.method public Ↄ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->IQ:I

    return v0
.end method

.method public く()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->IR:I

    return v0
.end method

.method public っ()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->IS:F

    return v0
.end method

.method public ףּ()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Jq:Ljava/util/List;

    return-object v0
.end method

.method public ﭖ()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Jp:Ljava/util/List;

    return-object v0
.end method

.method public ﭴ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Jr:Z

    return v0
.end method
