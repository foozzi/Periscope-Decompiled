.class public final Lcom/google/android/gms/maps/model/TileOverlayOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lo/eu;


# instance fields
.field private final BH:I

.field private IS:F

.field private IT:Z

.field private Jw:Lo/dw;

.field private Jx:Lo/dk;

.field private Jy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/eu;

    invoke-direct {v0}, Lo/eu;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->CREATOR:Lo/eu;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->IT:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Jy:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->BH:I

    return-void
.end method

.method public constructor <init>(ILandroid/os/IBinder;ZFZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->IT:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Jy:Z

    iput p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->BH:I

    invoke-static {p2}, Lo/dw$if;->ᔈ(Landroid/os/IBinder;)Lo/dw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Jw:Lo/dw;

    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Jw:Lo/dw;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lo/dj;

    invoke-direct {v0, p0}, Lo/dj;-><init>(Lcom/google/android/gms/maps/model/TileOverlayOptions;)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Jx:Lo/dk;

    iput-boolean p3, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->IT:Z

    iput p4, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->IS:F

    iput-boolean p5, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Jy:Z

    return-void
.end method

.method public static synthetic ˋ(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lo/dw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Jw:Lo/dw;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->IT:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-static {}, Lo/ch;->ᗀ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lo/ev;->ˊ(Lcom/google/android/gms/maps/model/TileOverlayOptions;Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2}, Lo/eu;->ˊ(Lcom/google/android/gms/maps/model/TileOverlayOptions;Landroid/os/Parcel;I)V

    :goto_0
    return-void
.end method

.method public ถ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->BH:I

    return v0
.end method

.method public っ()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->IS:F

    return v0
.end method

.method public ﮉ()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Jw:Lo/dw;

    invoke-interface {v0}, Lo/dw;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public ﮌ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->Jy:Z

    return v0
.end method
