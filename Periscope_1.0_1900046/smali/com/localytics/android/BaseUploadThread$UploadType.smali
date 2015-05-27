.class public final enum Lcom/localytics/android/BaseUploadThread$UploadType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/BaseUploadThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UploadType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lcom/localytics/android/BaseUploadThread$UploadType;>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/localytics/android/BaseUploadThread$UploadType;

.field public static final enum ANALYTICS:Lcom/localytics/android/BaseUploadThread$UploadType;

.field public static final enum MARKETING:Lcom/localytics/android/BaseUploadThread$UploadType;

.field public static final enum PROFILES:Lcom/localytics/android/BaseUploadThread$UploadType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 337
    new-instance v0, Lcom/localytics/android/BaseUploadThread$UploadType;

    const-string v1, "ANALYTICS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/localytics/android/BaseUploadThread$UploadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/localytics/android/BaseUploadThread$UploadType;->ANALYTICS:Lcom/localytics/android/BaseUploadThread$UploadType;

    new-instance v0, Lcom/localytics/android/BaseUploadThread$UploadType;

    const-string v1, "PROFILES"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/localytics/android/BaseUploadThread$UploadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/localytics/android/BaseUploadThread$UploadType;->PROFILES:Lcom/localytics/android/BaseUploadThread$UploadType;

    new-instance v0, Lcom/localytics/android/BaseUploadThread$UploadType;

    const-string v1, "MARKETING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/localytics/android/BaseUploadThread$UploadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/localytics/android/BaseUploadThread$UploadType;->MARKETING:Lcom/localytics/android/BaseUploadThread$UploadType;

    .line 335
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/localytics/android/BaseUploadThread$UploadType;

    sget-object v1, Lcom/localytics/android/BaseUploadThread$UploadType;->ANALYTICS:Lcom/localytics/android/BaseUploadThread$UploadType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/localytics/android/BaseUploadThread$UploadType;->PROFILES:Lcom/localytics/android/BaseUploadThread$UploadType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/localytics/android/BaseUploadThread$UploadType;->MARKETING:Lcom/localytics/android/BaseUploadThread$UploadType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/localytics/android/BaseUploadThread$UploadType;->$VALUES:[Lcom/localytics/android/BaseUploadThread$UploadType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 335
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/localytics/android/BaseUploadThread$UploadType;
    .locals 1

    .line 335
    const-class v0, Lcom/localytics/android/BaseUploadThread$UploadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/BaseUploadThread$UploadType;

    return-object v0
.end method

.method public static values()[Lcom/localytics/android/BaseUploadThread$UploadType;
    .locals 1

    .line 335
    sget-object v0, Lcom/localytics/android/BaseUploadThread$UploadType;->$VALUES:[Lcom/localytics/android/BaseUploadThread$UploadType;

    invoke-virtual {v0}, [Lcom/localytics/android/BaseUploadThread$UploadType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/localytics/android/BaseUploadThread$UploadType;

    return-object v0
.end method
