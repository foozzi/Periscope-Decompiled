.class public final Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lo/fa;


# instance fields
.field private final BH:I

.field private HX:Ljava/lang/Boolean;

.field private Id:Ljava/lang/Boolean;

.field private Is:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

.field private It:Ljava/lang/String;

.field private Iu:Lcom/google/android/gms/maps/model/LatLng;

.field private Iv:Ljava/lang/Integer;

.field private Iw:Ljava/lang/Boolean;

.field private Ix:Ljava/lang/Boolean;

.field private Iy:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/fa;

    invoke-direct {v0}, Lo/fa;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->CREATOR:Lo/fa;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->Iw:Ljava/lang/Boolean;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->Id:Ljava/lang/Boolean;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->Ix:Ljava/lang/Boolean;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->Iy:Ljava/lang/Boolean;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->BH:I

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/maps/model/StreetViewPanoramaCamera;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/Integer;BBBBB)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->Iw:Ljava/lang/Boolean;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->Id:Ljava/lang/Boolean;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->Ix:Ljava/lang/Boolean;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->Iy:Ljava/lang/Boolean;

    iput p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->BH:I

    iput-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->Is:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    iput-object p4, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->Iu:Lcom/google/android/gms/maps/model/LatLng;

    iput-object p5, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->Iv:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->It:Ljava/lang/String;

    invoke-static {p6}, Lo/cg;->ʻ(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->Iw:Ljava/lang/Boolean;

    invoke-static {p7}, Lo/cg;->ʻ(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->Id:Ljava/lang/Boolean;

    invoke-static {p8}, Lo/cg;->ʻ(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->Ix:Ljava/lang/Boolean;

    invoke-static {p9}, Lo/cg;->ʻ(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->Iy:Ljava/lang/Boolean;

    invoke-static {p10}, Lo/cg;->ʻ(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->HX:Ljava/lang/Boolean;

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

    invoke-static {p0, p1, p2}, Lo/fa;->ˊ(Lcom/google/android/gms/maps/StreetViewPanoramaOptions;Landroid/os/Parcel;I)V

    return-void
.end method

.method public ӟ()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->HX:Ljava/lang/Boolean;

    invoke-static {v0}, Lo/cg;->ˋ(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public յ()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->Id:Ljava/lang/Boolean;

    invoke-static {v0}, Lo/cg;->ˋ(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public پ()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->Iw:Ljava/lang/Boolean;

    invoke-static {v0}, Lo/cg;->ˋ(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public ڑ()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->Ix:Ljava/lang/Boolean;

    invoke-static {v0}, Lo/cg;->ˋ(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public ۅ()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->Iy:Ljava/lang/Boolean;

    invoke-static {v0}, Lo/cg;->ˋ(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public ۉ()Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->Is:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    return-object v0
.end method

.method public ے()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->Iu:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public ܘ()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->Iv:Ljava/lang/Integer;

    return-object v0
.end method

.method public ܟ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->It:Ljava/lang/String;

    return-object v0
.end method

.method public ถ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->BH:I

    return v0
.end method
