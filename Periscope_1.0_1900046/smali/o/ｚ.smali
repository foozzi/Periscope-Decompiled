.class public final Lo/ｚ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/শ;


# instance fields
.field public final tD:Lo/ব;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;II)V
    .locals 11

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p2, p0, Lo/ｚ;->url:Ljava/lang/String;

    .line 32
    new-instance v0, Lo/ব;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/x-mpegURL"

    move/from16 v3, p5

    move/from16 v4, p6

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, -0x1

    const/4 v7, -0x1

    move v8, p3

    const/4 v9, 0x0

    move-object v10, p4

    invoke-direct/range {v0 .. v10}, Lo/ব;-><init>(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lo/ｚ;->tD:Lo/ব;

    .line 34
    return-void
.end method


# virtual methods
.method public ᐴ()Lo/ব;
    .locals 1

    .line 38
    iget-object v0, p0, Lo/ｚ;->tD:Lo/ব;

    return-object v0
.end method
