.class public final Lcom/google/android/gms/maps/model/Tile;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lo/es;


# instance fields
.field private final BH:I

.field public final fw:[B

.field public final height:I

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/es;

    invoke-direct {v0}, Lo/es;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/Tile;->CREATOR:Lo/es;

    return-void
.end method

.method public constructor <init>(III[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/maps/model/Tile;->BH:I

    iput p2, p0, Lcom/google/android/gms/maps/model/Tile;->width:I

    iput p3, p0, Lcom/google/android/gms/maps/model/Tile;->height:I

    iput-object p4, p0, Lcom/google/android/gms/maps/model/Tile;->fw:[B

    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/maps/model/Tile;-><init>(III[B)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-static {}, Lo/ch;->ᗀ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lo/et;->ˊ(Lcom/google/android/gms/maps/model/Tile;Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2}, Lo/es;->ˊ(Lcom/google/android/gms/maps/model/Tile;Landroid/os/Parcel;I)V

    :goto_0
    return-void
.end method

.method public ถ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/Tile;->BH:I

    return v0
.end method
