.class public final Lcom/google/android/gms/maps/model/GroundOverlayOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lo/ec;


# instance fields
.field private final BH:I

.field private IM:F

.field private IS:F

.field private IT:Z

.field private IU:Lo/df;

.field private IV:Lcom/google/android/gms/maps/model/LatLng;

.field private IW:F

.field private IX:F

.field private IY:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private IZ:F

.field private Ja:F

.field private Jb:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/ec;

    invoke-direct {v0}, Lo/ec;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->CREATOR:Lo/ec;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->IT:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->IZ:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Ja:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Jb:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->BH:I

    return-void
.end method

.method public constructor <init>(ILandroid/os/IBinder;Lcom/google/android/gms/maps/model/LatLng;FFLcom/google/android/gms/maps/model/LatLngBounds;FFZFFF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->IT:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->IZ:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Ja:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Jb:F

    iput p1, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->BH:I

    new-instance v0, Lo/df;

    invoke-static {p2}, Lo/ﱟ$if;->ʼ(Landroid/os/IBinder;)Lo/ﱟ;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/df;-><init>(Lo/ﱟ;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->IU:Lo/df;

    iput-object p3, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->IV:Lcom/google/android/gms/maps/model/LatLng;

    iput p4, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->IW:F

    iput p5, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->IX:F

    iput-object p6, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->IY:Lcom/google/android/gms/maps/model/LatLngBounds;

    iput p7, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->IM:F

    iput p8, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->IS:F

    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->IT:Z

    iput p10, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->IZ:F

    iput p11, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Ja:F

    iput p12, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Jb:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBearing()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->IM:F

    return v0
.end method

.method public getHeight()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->IX:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->IW:F

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->IT:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-static {}, Lo/ch;->ᗀ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lo/ed;->ˊ(Lcom/google/android/gms/maps/model/GroundOverlayOptions;Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2}, Lo/ec;->ˊ(Lcom/google/android/gms/maps/model/GroundOverlayOptions;Landroid/os/Parcel;I)V

    :goto_0
    return-void
.end method

.method public ถ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->BH:I

    return v0
.end method

.method public っ()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->IS:F

    return v0
.end method

.method public へ()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->IU:Lo/df;

    invoke-virtual {v0}, Lo/df;->п()Lo/ﱟ;

    move-result-object v0

    invoke-interface {v0}, Lo/ﱟ;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public ゥ()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->IV:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public ト()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->IY:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method public リ()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->IZ:F

    return v0
.end method

.method public ヮ()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Ja:F

    return v0
.end method

.method public ヶ()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->Jb:F

    return v0
.end method
