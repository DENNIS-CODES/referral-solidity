pragma solidity ^0.5.0;

import "./Referral.sol";

contract ReferralWithFakeTime is Referral {
  uint256 fakeTime;

  constructor(
    uint256[] memory _levelRate,
    uint _referralBonus,
    uint _decimals,
    uint _secondsUntilInactive,
    bool _onlyRewardActiveReferrers,
    uint256[] memory _refereeBonusRateMap
  )
  Referral(_levelRate, _referralBonus, _decimals, _secondsUntilInactive, _onlyRewardActiveReferrers, _refereeBonusRateMap)
    public
  // solium-disable-next-line no-empty-blocks
  {}

  function getTime() public view returns(uint256) {
    return fakeTime;
  }

  function setTime(uint256 f) public {
    fakeTime = f;
  }
}
