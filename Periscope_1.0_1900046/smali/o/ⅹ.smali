.class public Lo/ⅹ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field bgColor:I

.field fL:[I

.field fM:I

.field fN:Lo/ℴ;

.field fO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/\u2134;>;"
        }
    .end annotation
.end field

.field fP:Z

.field fQ:I

.field fR:I

.field fS:I

.field fT:I

.field height:I

.field status:I

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ⅹ;->fL:[I

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lo/ⅹ;->status:I

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lo/ⅹ;->fM:I

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ⅹ;->fO:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .line 55
    iget v0, p0, Lo/ⅹ;->status:I

    return v0
.end method

.method public ⅴ()I
    .locals 1

    .line 48
    iget v0, p0, Lo/ⅹ;->fM:I

    return v0
.end method
