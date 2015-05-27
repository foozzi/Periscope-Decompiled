.class public Lcom/google/android/gms/internal/zzpi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lo/z;


# instance fields
.field private final BH:I

.field public BJ:Landroid/app/PendingIntent;

.field public Gr:I

.field public Gs:Lcom/google/android/gms/internal/zzpg;

.field Gt:Lo/bf;

.field Gu:Lo/bg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/z;

    invoke-direct {v0}, Lo/z;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzpi;->CREATOR:Lo/z;

    return-void
.end method

.method public constructor <init>(IILcom/google/android/gms/internal/zzpg;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzpi;->BH:I

    iput p2, p0, Lcom/google/android/gms/internal/zzpi;->Gr:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpi;->Gs:Lcom/google/android/gms/internal/zzpg;

    if-nez p4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p4}, Lo/bf$if;->ˌ(Landroid/os/IBinder;)Lo/bf;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzpi;->Gt:Lo/bf;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzpi;->BJ:Landroid/app/PendingIntent;

    if-nez p6, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-static {p6}, Lo/bg$if;->ˍ(Landroid/os/IBinder;)Lo/bg;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/zzpi;->Gu:Lo/bg;

    return-void
.end method

.method public static ˊ(Lo/bg;)Lcom/google/android/gms/internal/zzpi;
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/zzpi;

    invoke-interface {p0}, Lo/bg;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzpi;-><init>(IILcom/google/android/gms/internal/zzpg;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static ˋ(Lcom/google/android/gms/internal/zzpg;Lo/bf;)Lcom/google/android/gms/internal/zzpi;
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/zzpi;

    invoke-interface {p1}, Lo/bf;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object v3, p0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzpi;-><init>(IILcom/google/android/gms/internal/zzpg;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static ˋ(Lo/bf;)Lcom/google/android/gms/internal/zzpi;
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/zzpi;

    invoke-interface {p0}, Lo/bf;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzpi;-><init>(IILcom/google/android/gms/internal/zzpg;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lo/z;->ˊ(Lcom/google/android/gms/internal/zzpi;Landroid/os/Parcel;I)V

    return-void
.end method

.method public ถ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzpi;->BH:I

    return v0
.end method

.method public ｓ()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpi;->Gt:Lo/bf;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpi;->Gt:Lo/bf;

    invoke-interface {v0}, Lo/bf;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public ｦ()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpi;->Gu:Lo/bg;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpi;->Gu:Lo/bg;

    invoke-interface {v0}, Lo/bg;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    return-object v0
.end method
