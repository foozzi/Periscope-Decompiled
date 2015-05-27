.class public Lcom/google/android/gms/common/internal/zzi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<Lcom/google/android/gms/common/internal/zzi;>;"
        }
    .end annotation
.end field


# instance fields
.field public final DR:I

.field public DS:I

.field public DT:Ljava/lang/String;

.field public DU:Landroid/os/IBinder;

.field public DV:[Lcom/google/android/gms/common/api/Scope;

.field public DW:Landroid/os/Bundle;

.field public DX:Landroid/accounts/Account;

.field public final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/ッ;

    invoke-direct {v0}, Lo/ッ;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zzi;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/internal/zzi;->version:I

    const v0, 0x6c42d8

    iput v0, p0, Lcom/google/android/gms/common/internal/zzi;->DS:I

    iput p1, p0, Lcom/google/android/gms/common/internal/zzi;->DR:I

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/zzi;->version:I

    iput p2, p0, Lcom/google/android/gms/common/internal/zzi;->DR:I

    iput p3, p0, Lcom/google/android/gms/common/internal/zzi;->DS:I

    iput-object p4, p0, Lcom/google/android/gms/common/internal/zzi;->DT:Ljava/lang/String;

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    invoke-direct {p0, p5}, Lcom/google/android/gms/common/internal/zzi;->ˊ(Landroid/os/IBinder;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzi;->DX:Landroid/accounts/Account;

    goto :goto_0

    :cond_0
    iput-object p5, p0, Lcom/google/android/gms/common/internal/zzi;->DU:Landroid/os/IBinder;

    iput-object p8, p0, Lcom/google/android/gms/common/internal/zzi;->DX:Landroid/accounts/Account;

    :goto_0
    iput-object p6, p0, Lcom/google/android/gms/common/internal/zzi;->DV:[Lcom/google/android/gms/common/api/Scope;

    iput-object p7, p0, Lcom/google/android/gms/common/internal/zzi;->DW:Landroid/os/Bundle;

    return-void
.end method

.method private ˊ(Landroid/os/IBinder;)Landroid/accounts/Account;
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lo/בֿ$if;->ˎ(Landroid/os/IBinder;)Lo/בֿ;

    move-result-object v0

    invoke-static {v0}, Lo/ẓ;->ˎ(Lo/בֿ;)Landroid/accounts/Account;

    move-result-object v1

    :cond_0
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lo/ッ;->ˊ(Lcom/google/android/gms/common/internal/zzi;Landroid/os/Parcel;I)V

    return-void
.end method

.method public ˊ(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/zzi;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzi;->DX:Landroid/accounts/Account;

    return-object p0
.end method

.method public ˊ([Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/internal/zzi;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzi;->DV:[Lcom/google/android/gms/common/api/Scope;

    return-object p0
.end method

.method public ˋ(Landroid/os/Bundle;)Lcom/google/android/gms/common/internal/zzi;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzi;->DW:Landroid/os/Bundle;

    return-object p0
.end method

.method public ˏ(Lo/בֿ;)Lcom/google/android/gms/common/internal/zzi;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/בֿ;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzi;->DU:Landroid/os/IBinder;

    :cond_0
    return-object p0
.end method

.method public ᕀ(Ljava/lang/String;)Lcom/google/android/gms/common/internal/zzi;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzi;->DT:Ljava/lang/String;

    return-object p0
.end method
