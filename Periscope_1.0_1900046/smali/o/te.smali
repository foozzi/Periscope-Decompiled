.class public Lo/te;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final YA:Ljava/lang/String;

.field public final YB:Ljava/lang/String;

.field public final YC:I

.field public final YD:Ljava/lang/String;

.field public final YE:Ljava/lang/String;

.field public final YF:Lo/to;

.field public final YG:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<Lo/pq;>;"
        }
    .end annotation
.end field

.field public final apiKey:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final qo:Ljava/lang/String;

.field public final qp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lo/to;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lo/to;Ljava/util/Collection<Lo/pq;>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lo/te;->apiKey:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lo/te;->YA:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lo/te;->qo:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lo/te;->qp:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lo/te;->YB:Ljava/lang/String;

    .line 37
    iput-object p6, p0, Lo/te;->name:Ljava/lang/String;

    .line 38
    iput p7, p0, Lo/te;->YC:I

    .line 39
    iput-object p8, p0, Lo/te;->YD:Ljava/lang/String;

    .line 40
    iput-object p9, p0, Lo/te;->YE:Ljava/lang/String;

    .line 41
    iput-object p10, p0, Lo/te;->YF:Lo/to;

    .line 42
    iput-object p11, p0, Lo/te;->YG:Ljava/util/Collection;

    .line 43
    return-void
.end method
