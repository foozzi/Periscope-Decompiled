.class Lo/nh;
.super Ljava/lang/Exception;
.source ""


# instance fields
.field private final QX:Ljava/lang/String;

.field private final tB:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 14
    iput p1, p0, Lo/nh;->tB:I

    .line 15
    iput-object p3, p0, Lo/nh;->QX:Ljava/lang/String;

    .line 16
    return-void
.end method
