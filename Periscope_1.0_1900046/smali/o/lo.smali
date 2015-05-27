.class Lo/lo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field OE:Lo/ki;

.field PE:Z

.field PF:Z

.field connected:Z

.field name:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lo/ki;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lo/lo;->name:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lo/lo;->OE:Lo/ki;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/lo;->connected:Z

    .line 20
    return-void
.end method
