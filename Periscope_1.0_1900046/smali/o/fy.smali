.class public final Lo/fy;
.super Lo/fw;
.source ""


# static fields
.field public static final Ku:Lo/fy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lo/fy;

    invoke-direct {v0}, Lo/fy;-><init>()V

    sput-object v0, Lo/fy;->Ku:Lo/fy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    invoke-direct {p0}, Lo/fw;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 61
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lo/fy;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 53
    const-class v0, Lo/fy;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
