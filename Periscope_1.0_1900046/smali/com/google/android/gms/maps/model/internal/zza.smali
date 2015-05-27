.class public final Lcom/google/android/gms/maps/model/internal/zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lo/dm;


# instance fields
.field private final BH:I

.field private JH:B

.field private JI:Landroid/os/Bundle;

.field private JJ:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/dm;

    invoke-direct {v0}, Lo/dm;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/internal/zza;->CREATOR:Lo/dm;

    return-void
.end method

.method public constructor <init>(IBLandroid/os/Bundle;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/maps/model/internal/zza;->BH:I

    iput-byte p2, p0, Lcom/google/android/gms/maps/model/internal/zza;->JH:B

    iput-object p3, p0, Lcom/google/android/gms/maps/model/internal/zza;->JI:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/maps/model/internal/zza;->JJ:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/internal/zza;->JJ:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lo/dm;->ˊ(Lcom/google/android/gms/maps/model/internal/zza;Landroid/os/Parcel;I)V

    return-void
.end method

.method public ถ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/internal/zza;->BH:I

    return v0
.end method

.method public ﱟ()B
    .locals 1

    iget-byte v0, p0, Lcom/google/android/gms/maps/model/internal/zza;->JH:B

    return v0
.end method

.method public ﱡ()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/internal/zza;->JI:Landroid/os/Bundle;

    return-object v0
.end method
