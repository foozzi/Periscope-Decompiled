.class final enum Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/AnalyticsProvider$EventsV3Columns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "UploadFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

.field public static final enum V2:Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

.field public static final enum V3:Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 127
    new-instance v0, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    const-string v1, "V2"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->V2:Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    .line 128
    new-instance v0, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    const-string v1, "V3"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->V3:Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    .line 125
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    sget-object v1, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->V2:Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->V3:Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->$VALUES:[Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 134
    iput p3, p0, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->value:I

    .line 135
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;
    .locals 1

    .line 125
    const-class v0, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    return-object v0
.end method

.method public static values()[Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;
    .locals 1

    .line 125
    sget-object v0, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->$VALUES:[Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    invoke-virtual {v0}, [Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/localytics/android/AnalyticsProvider$EventsV3Columns$UploadFormat;->value:I

    return v0
.end method
