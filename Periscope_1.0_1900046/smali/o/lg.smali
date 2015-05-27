.class public Lo/lg;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final OJ:Lo/lg;

.field static final OK:Lo/lg;

.field static final OL:Lo/lg;

.field static final OM:Lo/lg;

.field static final ON:Lo/lg;

.field static final OO:Lo/lg;

.field static final OP:Lo/lg;

.field static final OQ:Lo/lg;

.field static final OR:Lo/lg;

.field static final OS:Lo/lg;

.field static final OT:Lo/lg;

.field static final OU:Lo/lg;

.field static final OV:Lo/lg;

.field static final OW:Lo/lg;

.field static final OX:Lo/lg;

.field static final OY:Lo/lg;

.field static final OZ:Lo/lg;

.field static final Pa:Lo/lg;

.field static final Pb:Lo/lg;

.field static final Pc:Lo/lg;

.field static final Pd:Lo/lg;

.field static final Pe:Lo/lg;

.field static final Pf:Lo/lg;

.field static final Pg:Lo/lg;

.field static final Ph:Lo/lg;

.field static final Pi:Lo/lg;

.field static final Pj:Lo/lg;

.field static final Pk:Lo/lg;

.field static final Pl:Lo/lg;

.field static final Pm:Lo/lg;

.field static final Pn:Lo/lg;

.field static final Po:Lo/lg;

.field static final Pp:Lo/lg;

.field static final Pq:Lo/lg;

.field static final Pr:Lo/lg;

.field static final Ps:Lo/lg;


# instance fields
.field public final Pt:I

.field public final Pu:Lo/fz;

.field private final Pv:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field public final tB:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 222
    new-instance v0, Lo/lg;

    const-string v1, "Timeout Occurred"

    const/16 v2, 0x64

    invoke-direct {v0, v2, v1}, Lo/lg;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo/lg;->OJ:Lo/lg;

    .line 227
    new-instance v0, Lo/lg;

    const-string v1, "Internal Error"

    const/16 v2, 0x7d

    invoke-direct {v0, v2, v1}, Lo/lg;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo/lg;->OK:Lo/lg;

    .line 232
    new-instance v0, Lo/lg;

    const-string v1, "Error while encrypting message to be published to Pubnub Cloud .Please contact support with error details."

    const/16 v2, 0x73

    invoke-direct {v0, v2, v1}, Lo/lg;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo/lg;->OL:Lo/lg;

    .line 239
    new-instance v0, Lo/lg;

    const-string v1, "Decryption Error. Please contact support with error details."

    const/16 v2, 0x74

    invoke-direct {v0, v2, v1}, Lo/lg;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo/lg;->OM:Lo/lg;

    .line 246
    new-instance v0, Lo/lg;

    const-string v1, "Invalid Json. Please contact support with error details."

    const/16 v2, 0x75

    invoke-direct {v0, v2, v1}, Lo/lg;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo/lg;->ON:Lo/lg;

    .line 253
    new-instance v0, Lo/lg;

    const-string v1, "JSON Error while processing API response. Please contact support with error details."

    const/16 v2, 0x79

    invoke-direct {v0, v2, v1}, Lo/lg;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo/lg;->OO:Lo/lg;

    .line 260
    new-instance v0, Lo/lg;

    const-string v1, "Malformed URL .Please contact support with error details."

    const/16 v2, 0x77

    invoke-direct {v0, v2, v1}, Lo/lg;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo/lg;->OP:Lo/lg;

    .line 267
    new-instance v0, Lo/lg;

    const-string v1, "Pubnub Error"

    const/16 v2, 0x65

    invoke-direct {v0, v2, v1}, Lo/lg;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo/lg;->OQ:Lo/lg;

    .line 273
    new-instance v0, Lo/lg;

    const-string v1, "Error opening url. Please contact support with error details."

    const/16 v2, 0x78

    invoke-direct {v0, v2, v1}, Lo/lg;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo/lg;->OR:Lo/lg;

    .line 280
    new-instance v0, Lo/lg;

    const-string v1, "Protocol Exception. Please contact support with error details."

    const/16 v2, 0x7a

    invoke-direct {v0, v2, v1}, Lo/lg;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo/lg;->OS:Lo/lg;

    .line 287
    new-instance v0, Lo/lg;

    const-string v1, "Connect Exception. Please verify if network is reachable. "

    const/16 v2, 0x66

    invoke-direct {v0, v2, v1}, Lo/lg;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo/lg;->OT:Lo/lg;

    .line 294
    new-instance v0, Lo/lg;

    const-string v1, "Unable to get Response Code. Please contact support with error details."

    const/16 v2, 0x80

    invoke-direct {v0, v2, v1}, Lo/lg;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo/lg;->OU:Lo/lg;

    .line 301
    new-instance v0, Lo/lg;

    const-string v1, "Unable to get Input Stream. Please contact support with error details."

    const/16 v2, 0x76

    invoke-direct {v0, v2, v1}, Lo/lg;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo/lg;->OV:Lo/lg;

    .line 308
    new-instance v0, Lo/lg;

    const-string v1, "Unable to read Input Stream. Please contact support with error details."

    const/16 v2, 0x7b

    invoke-direct {v0, v2, v1}, Lo/lg;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo/lg;->OW:Lo/lg;

    .line 315
    new-instance v0, Lo/lg;

    const-string v1, "Bad request. Please contact support with error details."

    const/16 v2, 0x7f

    invoke-direct {v0, v2, v1}, Lo/lg;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo/lg;->OX:Lo/lg;

    .line 322
    new-instance v0, Lo/lg;

    const-string v1, "HTTP Error. Please check network connectivity. Please contact support with error details if issue persists."

    const/16 v2, 0x67

    invoke-direct {v0, v2, v1}, Lo/lg;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo/lg;->OY:Lo/lg;

    .line 330
    new-instance v0, Lo/lg;

    const-string v1, "Bad Gateway. Please contact support with error details."

    const/16 v2, 0x7c

    invoke-direct {v0, v2, v1}, Lo/lg;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo/lg;->OZ:Lo/lg;

    .line 337
    new-instance v0, Lo/lg;

    const-string v1, "Client Timeout"

    const/16 v2, 0x68

    invoke-direct {v0, v2, v1}, Lo/lg;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo/lg;->Pa:Lo/lg;

    .line 343
    new-instance v0, Lo/lg;

    const-string v1, "Gateway Timeout"

    const/16 v2, 0x6f

    invoke-direct {v0, v2, v1}, Lo/lg;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo/lg;->Pb:Lo/lg;

    .line 349
    new-instance v0, Lo/lg;

    const-string v1, "Internal Server Error. Please contact support with error details."

    const/16 v2, 0x7d

    invoke-direct {v0, v2, v1}, Lo/lg;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo/lg;->Pc:Lo/lg;

    .line 356
    new-instance v0, Lo/lg;

    const-string v1, "Parsing Error"

    const/16 v2, 0x7e

    invoke-direct {v0, v2, v1}, Lo/lg;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo/lg;->Pd:Lo/lg;

    .line 362
    new-instance v0, Lo/lg;

    const-string v1, "Pubnub Exception"

    const/16 v2, 0x6c

    invoke-direct {v0, v2, v1}, Lo/lg;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo/lg;->Pe:Lo/lg;

    .line 368
    new-instance v0, Lo/lg;

    const-string v1, "Disconnect"

    const/16 v2, 0x6d

    invoke-direct {v0, v2, v1}, Lo/lg;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo/lg;->Pf:Lo/lg;

    .line 374
    new-instance v0, Lo/lg;

    const-string v1, "Disconnect and Resubscribe"

    const/16 v2, 0x6e

    invoke-direct {v0, v2, v1}, Lo/lg;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo/lg;->Pg:Lo/lg;

    .line 380
    new-instance v0, Lo/lg;

    const-string v1, "Authentication Failure. Incorrect Authentication Key"

    const/16 v2, 0x70

    invoke-direct {v0, v2, v1}, Lo/lg;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo/lg;->Ph:Lo/lg;

    .line 387
    new-instance v0, Lo/lg;

    const-string v1, "Authentication Failure. Authentication Key is missing"

    const/16 v2, 0x71

    invoke-direct {v0, v2, v1}, Lo/lg;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo/lg;->Pi:Lo/lg;

    .line 394
    new-instance v0, Lo/lg;

    const-string v1, "ULS configuration failed. Secret Key not configured. "

    const/16 v2, 0x72

    invoke-direct {v0, v2, v1}, Lo/lg;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo/lg;->Pj:Lo/lg;

    .line 400
    new-instance v0, Lo/lg;

    const-string v1, "Invalid Signature . Please contact support with error details."

    const/16 v2, 0x69

    invoke-direct {v0, v2, v1}, Lo/lg;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo/lg;->Pk:Lo/lg;

    .line 407
    new-instance v0, Lo/lg;

    const-string v1, "Network Error. Please verify if network is reachable."

    const/16 v2, 0x6a

    invoke-direct {v0, v2, v1}, Lo/lg;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo/lg;->Pl:Lo/lg;

    .line 413
    new-instance v0, Lo/lg;

    const-string v1, "Page Not FoundPlease verify if network is reachable.Please contact support with error details."

    const/16 v2, 0x81

    invoke-direct {v0, v2, v1}, Lo/lg;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo/lg;->Pm:Lo/lg;

    .line 421
    new-instance v0, Lo/lg;

    const-string v1, "Subscribe Timeout."

    const/16 v2, 0x82

    invoke-direct {v0, v2, v1}, Lo/lg;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo/lg;->Pn:Lo/lg;

    .line 427
    new-instance v0, Lo/lg;

    const-string v1, "INVALID ARGUMENTS."

    const/16 v2, 0x83

    invoke-direct {v0, v2, v1}, Lo/lg;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo/lg;->Po:Lo/lg;

    .line 433
    new-instance v0, Lo/lg;

    const-string v1, "Channel Missing."

    const/16 v2, 0x84

    invoke-direct {v0, v2, v1}, Lo/lg;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo/lg;->Pp:Lo/lg;

    .line 439
    new-instance v0, Lo/lg;

    const-string v1, "Pubnub Connection not set"

    const/16 v2, 0x85

    invoke-direct {v0, v2, v1}, Lo/lg;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo/lg;->Pq:Lo/lg;

    .line 445
    new-instance v0, Lo/lg;

    const-string v1, "Channel group name is invalid"

    const/16 v2, 0x86

    invoke-direct {v0, v2, v1}, Lo/lg;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo/lg;->Pr:Lo/lg;

    .line 451
    new-instance v0, Lo/lg;

    const-string v1, "Error while encrypting/decrypting message.Please contact support with error details."

    const/16 v2, 0x87

    invoke-direct {v0, v2, v1}, Lo/lg;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo/lg;->Ps:Lo/lg;

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 6

    .line 473
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lo/lg;-><init>(IILjava/lang/String;Lo/fz;Ljava/lang/String;)V

    .line 474
    return-void
.end method

.method private constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 483
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lo/lg;-><init>(IILjava/lang/String;Lo/fz;Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method private constructor <init>(IILjava/lang/String;Lo/fz;Ljava/lang/String;)V
    .locals 0

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput p2, p0, Lo/lg;->Pt:I

    .line 466
    iput p1, p0, Lo/lg;->tB:I

    .line 467
    iput-object p3, p0, Lo/lg;->Pv:Ljava/lang/String;

    .line 468
    iput-object p4, p0, Lo/lg;->Pu:Lo/fz;

    .line 469
    iput-object p5, p0, Lo/lg;->message:Ljava/lang/String;

    .line 470
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 6

    .line 480
    move-object v0, p0

    move v1, p1

    move-object v3, p2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lo/lg;-><init>(IILjava/lang/String;Lo/fz;Ljava/lang/String;)V

    .line 481
    return-void
.end method

.method static ˊ(Lo/lg;I)Lo/lg;
    .locals 3

    .line 513
    new-instance v0, Lo/lg;

    iget v1, p0, Lo/lg;->tB:I

    iget-object v2, p0, Lo/lg;->Pv:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lo/lg;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method static ˊ(Lo/lg;ILjava/lang/String;)Lo/lg;
    .locals 3

    .line 516
    new-instance v0, Lo/lg;

    iget v1, p0, Lo/lg;->tB:I

    iget-object v2, p0, Lo/lg;->Pv:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2, p2}, Lo/lg;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static ˊ(Lo/lg;Ljava/lang/String;)Lo/lg;
    .locals 4

    .line 504
    new-instance v0, Lo/lg;

    iget v1, p0, Lo/lg;->tB:I

    iget v2, p0, Lo/lg;->Pt:I

    iget-object v3, p0, Lo/lg;->Pv:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, Lo/lg;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static ˊ(Lo/lg;Ljava/lang/String;Lo/fz;)Lo/lg;
    .locals 6

    .line 507
    new-instance v0, Lo/lg;

    iget v1, p0, Lo/lg;->tB:I

    iget v2, p0, Lo/lg;->Pt:I

    iget-object v3, p0, Lo/lg;->Pv:Ljava/lang/String;

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lo/lg;-><init>(IILjava/lang/String;Lo/fz;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/lg;->tB:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/lg;->Pt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/lg;->Pv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 493
    iget-object v0, p0, Lo/lg;->Pu:Lo/fz;

    if-eqz v0, :cond_0

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/lg;->Pu:Lo/fz;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 496
    :cond_0
    iget-object v0, p0, Lo/lg;->message:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/lg;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/lg;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 500
    :cond_1
    return-object v2
.end method
