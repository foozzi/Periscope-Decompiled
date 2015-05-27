.class public final Lo/ɢ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final fw:[B

.field private final offset:I


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lo/ɢ;->fw:[B

    .line 40
    iput p2, p0, Lo/ɢ;->offset:I

    .line 41
    return-void
.end method


# virtual methods
.method public ｨ(I)I
    .locals 1

    .line 50
    iget v0, p0, Lo/ɢ;->offset:I

    add-int/2addr v0, p1

    return v0
.end method
